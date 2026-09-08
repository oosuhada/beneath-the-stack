#pragma once

#include <array>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <memory>
#include <optional>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

#include "bts/bplus_tree.hpp"

namespace bts {

struct ToyRow {
  std::uint32_t id = 0;
  std::string username;
  std::string email;

  bool operator==(const ToyRow& other) const {
    return id == other.id && username == other.username && email == other.email;
  }
};

struct RowLocation {
  std::uint32_t page = 0;
  std::uint16_t slot = 0;
};

class Pager {
 public:
  static constexpr std::size_t kPageSize = 4096;
  using Page = std::array<std::byte, kPageSize>;

  explicit Pager(std::filesystem::path path) : path_(std::move(path)) {
    if (!std::filesystem::exists(path_) || std::filesystem::file_size(path_) == 0) {
      std::ofstream create(path_, std::ios::binary | std::ios::trunc);
      if (!create) {
        throw std::runtime_error("failed to create pager file");
      }
      Page header{};
      const std::array<char, 8> magic = {'B', 'T', 'S', 'D', 'B', '0', '0', '1'};
      std::memcpy(header.data(), magic.data(), magic.size());
      const std::uint64_t rows = 0;
      std::memcpy(header.data() + 8, &rows, sizeof(rows));
      create.write(reinterpret_cast<const char*>(header.data()),
                   static_cast<std::streamsize>(header.size()));
    }
    file_.open(path_, std::ios::binary | std::ios::in | std::ios::out);
    if (!file_) {
      throw std::runtime_error("failed to open pager file");
    }
    validate_header();
  }

  Pager(const Pager&) = delete;
  Pager& operator=(const Pager&) = delete;

  Page read_page(std::uint32_t page_number) const {
    Page page{};
    file_.clear();
    file_.seekg(static_cast<std::streamoff>(page_number) * static_cast<std::streamoff>(kPageSize),
                std::ios::beg);
    if (!file_) {
      throw std::runtime_error("pager seek failed");
    }
    file_.read(reinterpret_cast<char*>(page.data()), static_cast<std::streamsize>(page.size()));
    const std::streamsize count = file_.gcount();
    if (count == 0) {
      file_.clear();
      return page;
    }
    if (count != static_cast<std::streamsize>(page.size())) {
      throw std::runtime_error("partial page read");
    }
    return page;
  }

  void write_page(std::uint32_t page_number, const Page& page) {
    file_.clear();
    file_.seekp(static_cast<std::streamoff>(page_number) * static_cast<std::streamoff>(kPageSize),
                std::ios::beg);
    if (!file_) {
      throw std::runtime_error("pager seek failed");
    }
    file_.write(reinterpret_cast<const char*>(page.data()),
                static_cast<std::streamsize>(page.size()));
    file_.flush();
    if (!file_) {
      throw std::runtime_error("pager write failed");
    }
  }

  std::uint64_t row_count() const {
    const Page header = read_page(0);
    std::uint64_t rows = 0;
    std::memcpy(&rows, header.data() + 8, sizeof(rows));
    return rows;
  }

  void set_row_count(std::uint64_t rows) {
    Page header = read_page(0);
    std::memcpy(header.data() + 8, &rows, sizeof(rows));
    write_page(0, header);
  }

  const std::filesystem::path& path() const { return path_; }

 private:
  void validate_header() const {
    const Page header = read_page(0);
    const std::array<char, 8> magic = {'B', 'T', 'S', 'D', 'B', '0', '0', '1'};
    if (std::memcmp(header.data(), magic.data(), magic.size()) != 0) {
      throw std::runtime_error("invalid toy database header");
    }
  }

  std::filesystem::path path_;
  mutable std::fstream file_;
};

class ToyTable {
 public:
  static constexpr std::size_t kRowSize = 128;
  static constexpr std::size_t kUsernameBytes = 32;
  static constexpr std::size_t kEmailBytes = 92;
  static constexpr std::size_t kRowsPerPage = Pager::kPageSize / kRowSize;

  explicit ToyTable(const std::filesystem::path& path) : pager_(path) { rebuild_index(); }

  void insert(const ToyRow& row) {
    validate_row(row);
    if (index_->find(row.id).has_value()) {
      throw std::invalid_argument("duplicate toy row id");
    }
    const std::uint64_t row_number = pager_.row_count();
    const RowLocation location = location_for(row_number);
    Pager::Page page = pager_.read_page(location.page);
    serialize_row(row, page.data() + static_cast<std::size_t>(location.slot) * kRowSize);
    pager_.write_page(location.page, page);
    pager_.set_row_count(row_number + 1);
    index_->insert(row.id, location);
  }

  std::optional<ToyRow> find_indexed(std::uint32_t id) const {
    const auto location = index_->find(id);
    if (!location.has_value()) {
      return std::nullopt;
    }
    const Pager::Page page = pager_.read_page(location->page);
    return deserialize_row(page.data() + static_cast<std::size_t>(location->slot) * kRowSize);
  }

  std::optional<ToyRow> find_scanned(std::uint32_t id) const {
    const std::uint64_t rows = pager_.row_count();
    const std::size_t pages = data_page_count();
    for (std::size_t page_index = 0; page_index < pages; ++page_index) {
      const std::uint32_t page_number = static_cast<std::uint32_t>(page_index + 1);
      const Pager::Page page = pager_.read_page(page_number);
      const std::size_t rows_on_page = rows_in_page(page_index, rows);
      for (std::size_t slot = 0; slot < rows_on_page; ++slot) {
        ToyRow row = deserialize_row(page.data() + slot * kRowSize);
        if (row.id == id) {
          return row;
        }
      }
    }
    return std::nullopt;
  }

  std::vector<ToyRow> range_indexed(std::uint32_t lower, std::uint32_t upper) const {
    std::vector<ToyRow> result;
    for (const auto& [key, location] : index_->range(lower, upper)) {
      (void)key;
      const Pager::Page page = pager_.read_page(location.page);
      result.push_back(
          deserialize_row(page.data() + static_cast<std::size_t>(location.slot) * kRowSize));
    }
    return result;
  }

  void rebuild_index() {
    index_ = std::make_unique<BPlusTree<std::uint32_t, RowLocation>>(32);
    const std::uint64_t rows = pager_.row_count();
    const std::size_t pages = data_page_count();
    for (std::size_t page_index = 0; page_index < pages; ++page_index) {
      const std::uint32_t page_number = static_cast<std::uint32_t>(page_index + 1);
      const Pager::Page page = pager_.read_page(page_number);
      const std::size_t rows_on_page = rows_in_page(page_index, rows);
      for (std::size_t slot = 0; slot < rows_on_page; ++slot) {
        const ToyRow row = deserialize_row(page.data() + slot * kRowSize);
        index_->insert(row.id, RowLocation{page_number, static_cast<std::uint16_t>(slot)});
      }
    }
  }

  std::uint64_t row_count() const { return pager_.row_count(); }

  std::size_t data_page_count() const {
    const std::uint64_t rows = pager_.row_count();
    return rows == 0 ? 0 : static_cast<std::size_t>((rows + kRowsPerPage - 1) / kRowsPerPage);
  }

  std::size_t index_height() const { return index_->height(); }
  std::size_t index_leaf_count() const { return index_->leaf_count(); }

  static RowLocation location_for(std::uint64_t row_number) {
    return RowLocation{static_cast<std::uint32_t>(1 + row_number / kRowsPerPage),
                       static_cast<std::uint16_t>(row_number % kRowsPerPage)};
  }

 private:
  static void validate_row(const ToyRow& row) {
    if (row.username.size() >= kUsernameBytes || row.email.size() >= kEmailBytes) {
      throw std::invalid_argument("toy row string exceeds fixed serialized field");
    }
  }

  static void serialize_row(const ToyRow& row, std::byte* destination) {
    std::memset(destination, 0, kRowSize);
    std::memcpy(destination, &row.id, sizeof(row.id));
    std::memcpy(destination + sizeof(row.id), row.username.data(), row.username.size());
    std::memcpy(destination + sizeof(row.id) + kUsernameBytes, row.email.data(), row.email.size());
  }

  static ToyRow deserialize_row(const std::byte* source) {
    ToyRow row;
    std::memcpy(&row.id, source, sizeof(row.id));
    const char* username = reinterpret_cast<const char*>(source + sizeof(row.id));
    const char* email = reinterpret_cast<const char*>(source + sizeof(row.id) + kUsernameBytes);
    row.username.assign(username, strnlen(username, kUsernameBytes));
    row.email.assign(email, strnlen(email, kEmailBytes));
    return row;
  }

  static std::size_t rows_in_page(std::size_t page_index, std::uint64_t total_rows) {
    const std::uint64_t start = static_cast<std::uint64_t>(page_index) * kRowsPerPage;
    const std::uint64_t remaining = total_rows > start ? total_rows - start : 0;
    return static_cast<std::size_t>(remaining < kRowsPerPage ? remaining : kRowsPerPage);
  }

  Pager pager_;
  std::unique_ptr<BPlusTree<std::uint32_t, RowLocation>> index_;
};

}  // namespace bts

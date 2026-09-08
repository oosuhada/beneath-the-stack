#include <unistd.h>

#include <atomic>
#include <cstddef>
#include <cstdint>
#include <filesystem>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"
#include "bts/toy_storage.hpp"

namespace {

std::filesystem::path temporary_database_path() {
  char path[] = "/tmp/bts-storage-XXXXXX";
  const int fd = ::mkstemp(path);
  if (fd < 0) {
    throw std::runtime_error("mkstemp failed");
  }
  ::close(fd);
  ::unlink(path);
  return std::filesystem::path(path);
}

std::vector<std::uint32_t> query_ids(std::size_t rows, std::size_t query_count) {
  std::vector<std::uint32_t> result;
  result.reserve(query_count);
  std::uint64_t state = 0x9e3779b97f4a7c15ULL;
  for (std::size_t i = 0; i < query_count; ++i) {
    state ^= state << 7;
    state ^= state >> 9;
    result.push_back(static_cast<std::uint32_t>(state % rows));
  }
  return result;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t rows = bts::size_argument(argc, argv, "--rows", 4000);
  const std::size_t queries = bts::size_argument(argc, argv, "--queries", 300);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 8);
  if (rows == 0) {
    throw std::invalid_argument("storage lab requires at least one row");
  }

  const std::filesystem::path path = temporary_database_path();
  {
    bts::ToyTable table(path);
    for (std::size_t i = 0; i < rows; ++i) {
      table.insert(bts::ToyRow{static_cast<std::uint32_t>(i), "user" + std::to_string(i),
                               "user" + std::to_string(i) + "@example.test"});
    }
  }

  bts::ToyTable table(path);
  const auto ids = query_ids(rows, queries);
  std::atomic<std::uint64_t> sink{0};

  const auto index_rebuild = bts::benchmark("page-scan-index-rebuild", warmup, repetitions, [&] {
    bts::ToyTable reopened(path);
    sink.store(reopened.index_leaf_count(), std::memory_order_relaxed);
  });

  const auto scanned = bts::benchmark("page-backed-sequential-scan", warmup, repetitions, [&] {
    std::uint64_t total = 0;
    for (const std::uint32_t id : ids) {
      const auto row = table.find_scanned(id);
      total += row.has_value() ? row->id : 0;
    }
    sink.store(total, std::memory_order_relaxed);
  });

  const auto indexed = bts::benchmark("bplus-index-page-lookup", warmup, repetitions, [&] {
    std::uint64_t total = 0;
    for (const std::uint32_t id : ids) {
      const auto row = table.find_indexed(id);
      total += row.has_value() ? row->id : 0;
    }
    sink.store(total, std::memory_order_relaxed);
  });

  const std::uint32_t lower = static_cast<std::uint32_t>(rows / 3);
  const std::uint32_t upper =
      static_cast<std::uint32_t>(std::min<std::size_t>(rows - 1, lower + 31));
  const auto range = table.range_indexed(lower, upper);

  std::cout << "{\"lab\":\"storage-engine\",\"format\":\"fixed-row + 4KiB pages + in-memory B+tree "
               "index\",\"rows\":"
            << rows << ",\"queries\":" << queries
            << ",\"row_size_bytes\":" << bts::ToyTable::kRowSize
            << ",\"page_size_bytes\":" << bts::Pager::kPageSize
            << ",\"rows_per_page\":" << bts::ToyTable::kRowsPerPage
            << ",\"data_pages\":" << table.data_page_count()
            << ",\"index_height\":" << table.index_height()
            << ",\"index_leaf_count\":" << table.index_leaf_count()
            << ",\"range_rows\":" << range.size() << ",\"index_rebuild\":";
  bts::write_stats_json(std::cout, index_rebuild);
  std::cout << ",\"sequential_scan\":";
  bts::write_stats_json(std::cout, scanned);
  std::cout << ",\"indexed_lookup\":";
  bts::write_stats_json(std::cout, indexed);
  std::cout << "}\n";

  std::filesystem::remove(path);
  return range.empty() || sink.load(std::memory_order_relaxed) == 0 ? 1 : 0;
}

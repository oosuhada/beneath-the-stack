#pragma once

#include <cstddef>
#include <cstdint>
#include <map>
#include <optional>
#include <sstream>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace bts {

enum class ToyInodeType { kDirectory, kRegularFile };

struct ToyInodeStat {
  std::uint32_t inode = 0;
  ToyInodeType type = ToyInodeType::kRegularFile;
  std::size_t size_bytes = 0;
  std::size_t block_count = 0;
  std::uint32_t reference_count = 0;
};

class ToyFileSystem {
 public:
  static constexpr std::size_t kBlockBytes = 16;

  ToyFileSystem() { inodes_.push_back(Inode{ToyInodeType::kDirectory, {}, {}, 1}); }

  void mkdir(const std::string& path) {
    const auto [parent, name] = parent_and_name(path);
    require_directory(inode_ref(parent));
    if (inode_ref(parent).entries.contains(name)) {
      throw std::invalid_argument("path already exists");
    }
    const std::uint32_t inode = allocate_inode(ToyInodeType::kDirectory);
    inode_mut(parent).entries[name] = inode;
  }

  void write_file(const std::string& path, const std::string& contents) {
    const auto [parent, name] = parent_and_name(path);
    require_directory(inode_ref(parent));
    std::uint32_t file_inode = 0;
    if (auto existing = inode_ref(parent).entries.find(name);
        existing != inode_ref(parent).entries.end()) {
      file_inode = existing->second;
      if (inode_mut(file_inode).type != ToyInodeType::kRegularFile) {
        throw std::invalid_argument("cannot write bytes to a directory");
      }
    } else {
      file_inode = allocate_inode(ToyInodeType::kRegularFile);
      inode_mut(parent).entries[name] = file_inode;
    }
    auto& file = inode_mut(file_inode);
    file.size_bytes = contents.size();
    file.blocks.clear();
    for (std::size_t offset = 0; offset < contents.size(); offset += kBlockBytes) {
      file.blocks.push_back(contents.substr(offset, kBlockBytes));
    }
  }

  std::string read_file(const std::string& path) const {
    const auto inode = lookup(path);
    if (!inode.has_value()) {
      throw std::invalid_argument("path not found");
    }
    const auto& file = inode_ref(*inode);
    if (file.type != ToyInodeType::kRegularFile) {
      throw std::invalid_argument("cannot read directory as file");
    }
    std::string result;
    for (const auto& block : file.blocks) {
      result += block;
    }
    result.resize(file.size_bytes);
    return result;
  }

  void link_file(const std::string& existing_path, const std::string& new_path) {
    const auto target = lookup(existing_path);
    if (!target.has_value()) {
      throw std::invalid_argument("link target missing");
    }
    if (inode_ref(*target).type != ToyInodeType::kRegularFile) {
      throw std::invalid_argument("toy filesystem only hard-links regular files");
    }
    const auto [parent, name] = parent_and_name(new_path);
    auto& directory = inode_mut(parent);
    require_directory(directory);
    if (directory.entries.contains(name)) {
      throw std::invalid_argument("link path already exists");
    }
    directory.entries[name] = *target;
    ++inode_mut(*target).reference_count;
  }

  std::optional<std::uint32_t> lookup(const std::string& path) const {
    if (path == "/") {
      return 0;
    }
    std::uint32_t current = 0;
    for (const auto& part : split(path)) {
      const auto& directory = inode_ref(current);
      if (directory.type != ToyInodeType::kDirectory) {
        return std::nullopt;
      }
      const auto next = directory.entries.find(part);
      if (next == directory.entries.end()) {
        return std::nullopt;
      }
      current = next->second;
    }
    return current;
  }

  ToyInodeStat stat(const std::string& path) const {
    const auto inode = lookup(path);
    if (!inode.has_value()) {
      throw std::invalid_argument("path not found");
    }
    const auto& node = inode_ref(*inode);
    return ToyInodeStat{*inode, node.type, node.size_bytes, node.blocks.size(),
                        node.reference_count};
  }

  std::vector<std::pair<std::string, std::uint32_t>> list_directory(const std::string& path) const {
    const auto inode = lookup(path);
    if (!inode.has_value()) {
      throw std::invalid_argument("directory not found");
    }
    const auto& directory = inode_ref(*inode);
    require_directory(directory);
    return {directory.entries.begin(), directory.entries.end()};
  }

  std::size_t inode_count() const { return inodes_.size(); }

 private:
  struct Inode {
    ToyInodeType type;
    std::map<std::string, std::uint32_t> entries;
    std::vector<std::string> blocks;
    std::uint32_t reference_count = 1;
    std::size_t size_bytes = 0;
  };

  static std::vector<std::string> split(const std::string& path) {
    if (path.empty() || path.front() != '/') {
      throw std::invalid_argument("toy paths must be absolute");
    }
    std::vector<std::string> parts;
    std::stringstream input(path);
    std::string part;
    while (std::getline(input, part, '/')) {
      if (part.empty()) {
        continue;
      }
      if (part == "." || part == ".." || part.find('/') != std::string::npos) {
        throw std::invalid_argument("toy filesystem rejects relative path components");
      }
      parts.push_back(part);
    }
    return parts;
  }

  std::pair<std::uint32_t, std::string> parent_and_name(const std::string& path) const {
    auto parts = split(path);
    if (parts.empty()) {
      throw std::invalid_argument("root has no parent entry name");
    }
    const std::string name = parts.back();
    parts.pop_back();
    std::uint32_t parent = 0;
    for (const auto& part : parts) {
      const auto& directory = inode_ref(parent);
      require_directory(directory);
      const auto next = directory.entries.find(part);
      if (next == directory.entries.end()) {
        throw std::invalid_argument("parent directory missing");
      }
      parent = next->second;
    }
    return {parent, name};
  }

  std::uint32_t allocate_inode(ToyInodeType type) {
    const std::uint32_t inode = static_cast<std::uint32_t>(inodes_.size());
    inodes_.push_back(Inode{type, {}, {}, 1});
    return inode;
  }

  static void require_directory(const Inode& inode) {
    if (inode.type != ToyInodeType::kDirectory) {
      throw std::invalid_argument("inode is not a directory");
    }
  }

  Inode& inode_mut(std::uint32_t inode) {
    if (inode >= inodes_.size()) {
      throw std::out_of_range("inode out of range");
    }
    return inodes_[inode];
  }

  const Inode& inode_ref(std::uint32_t inode) const {
    if (inode >= inodes_.size()) {
      throw std::out_of_range("inode out of range");
    }
    return inodes_[inode];
  }

  std::vector<Inode> inodes_;
};

}  // namespace bts

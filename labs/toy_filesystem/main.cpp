#include <atomic>
#include <cstddef>
#include <iostream>
#include <stdexcept>
#include <string>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"
#include "bts/toy_filesystem.hpp"

namespace {

void write_stat(const bts::ToyInodeStat& stat) {
  std::cout << "{\"inode\":" << stat.inode << ",\"type\":\""
            << (stat.type == bts::ToyInodeType::kDirectory ? "directory" : "regular-file")
            << "\",\"size_bytes\":" << stat.size_bytes << ",\"block_count\":" << stat.block_count
            << ",\"reference_count\":" << stat.reference_count << '}';
}

bts::ToyFileSystem build_fixture() {
  bts::ToyFileSystem fs;
  fs.mkdir("/home");
  fs.mkdir("/home/oosu");
  fs.write_file("/home/oosu/notes.txt", "path lookup reaches inode metadata before data blocks");
  fs.link_file("/home/oosu/notes.txt", "/home/oosu/notes.link");
  return fs;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 8);
  const bts::ToyFileSystem fs = build_fixture();
  const auto file_stat = fs.stat("/home/oosu/notes.txt");
  const auto link_stat = fs.stat("/home/oosu/notes.link");
  const std::string content = fs.read_file("/home/oosu/notes.link");
  bool traversal_rejected = false;
  try {
    (void)fs.lookup("/home/../etc/passwd");
  } catch (const std::invalid_argument&) {
    traversal_rejected = true;
  }
  std::atomic<std::uint64_t> sink{0};
  const auto lookup_time = bts::benchmark("path-directory-inode-lookup", warmup, repetitions, [&] {
    std::uint64_t total = 0;
    for (int i = 0; i < 2000; ++i) {
      total += fs.stat(i % 2 == 0 ? "/home/oosu/notes.txt" : "/home/oosu/notes.link").inode;
    }
    sink.store(total, std::memory_order_relaxed);
  });

  std::cout << "{\"lab\":\"toy-filesystem\",\"model\":\"path -> directory entry -> inode-like "
               "metadata -> fixed-size blocks\",\"block_size_bytes\":"
            << bts::ToyFileSystem::kBlockBytes << ",\"inode_count\":" << fs.inode_count()
            << ",\"same_inode_for_hard_link\":"
            << (file_stat.inode == link_stat.inode ? "true" : "false")
            << ",\"traversal_rejected\":" << (traversal_rejected ? "true" : "false")
            << ",\"content\":\"" << bts::json_escape(content) << "\",\"file_stat\":";
  write_stat(file_stat);
  std::cout << ",\"link_stat\":";
  write_stat(link_stat);
  std::cout << ",\"lookup\":";
  bts::write_stats_json(std::cout, lookup_time);
  std::cout << "}\n";

  return file_stat.inode == link_stat.inode && file_stat.reference_count == 2 &&
                 traversal_rejected && content.find("inode metadata") != std::string::npos
             ? 0
             : 1;
}

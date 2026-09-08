#include <algorithm>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <numeric>
#include <optional>
#include <random>
#include <utility>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/bplus_tree.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

#if defined(__GNUC__) || defined(__clang__)
__attribute__((noinline))
#endif
std::optional<int>
sequential_lookup(const std::vector<std::pair<int, int>>& records, int query) {
  for (const auto& record : records) {
    if (record.first == query) {
      return record.second;
    }
  }
  return std::nullopt;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t rows = bts::size_argument(argc, argv, "--rows", 12000);
  const std::size_t query_count = bts::size_argument(argc, argv, "--queries", 600);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 10);
  const std::size_t order = bts::size_argument(argc, argv, "--order", 32);

  std::vector<int> keys(rows);
  std::iota(keys.begin(), keys.end(), 0);
  std::mt19937 generator(20260908);
  std::shuffle(keys.begin(), keys.end(), generator);

  std::vector<std::pair<int, int>> records;
  records.reserve(rows);
  bts::BPlusTree<int, int> index(order);
  for (const int key : keys) {
    const int value = key * 3 + 7;
    records.emplace_back(key, value);
    index.insert(key, value);
  }

  std::uniform_int_distribution<int> query_distribution(0, static_cast<int>(rows - 1));
  std::vector<int> queries;
  queries.reserve(query_count);
  for (std::size_t i = 0; i < query_count; ++i) {
    queries.push_back(query_distribution(generator));
  }

  std::atomic<std::uint64_t> sink{0};
  const auto build_stats = bts::benchmark("bplus-tree-build", warmup, repetitions, [&] {
    bts::BPlusTree<int, int> temporary(order);
    for (const auto& [key, value] : records) {
      temporary.insert(key, value);
    }
    sink.store(temporary.leaf_count(), std::memory_order_relaxed);
  });

  const auto scan_stats = bts::benchmark("sequential-scan", warmup, repetitions, [&] {
    std::uint64_t checksum = 0;
    for (const int query : queries) {
      checksum += static_cast<std::uint64_t>(sequential_lookup(records, query).value_or(0));
    }
    sink.store(checksum, std::memory_order_relaxed);
  });

  const auto index_stats = bts::benchmark("bplus-tree-lookup", warmup, repetitions, [&] {
    std::uint64_t checksum = 0;
    for (const int query : queries) {
      checksum += static_cast<std::uint64_t>(index.find(query).value_or(0));
    }
    sink.store(checksum, std::memory_order_relaxed);
  });

  const int range_start = static_cast<int>(rows / 3);
  const int range_end = range_start + 24;
  const auto range = index.range(range_start, range_end);

  std::cout << "{\"lab\":\"db-index\",\"rows\":" << rows << ",\"queries\":" << query_count
            << ",\"order\":" << order << ",\"tree_height\":" << index.height()
            << ",\"leaf_count\":" << index.leaf_count()
            << ",\"range_scan\":{\"from\":" << range_start << ",\"to\":" << range_end
            << ",\"returned\":" << range.size() << "},\"index_build\":";
  bts::write_stats_json(std::cout, build_stats);
  std::cout << ",\"sequential_scan\":";
  bts::write_stats_json(std::cout, scan_stats);
  std::cout << ",\"bplus_tree\":";
  bts::write_stats_json(std::cout, index_stats);
  std::cout << "}\n";
  return (range.size() != 25 || sink.load(std::memory_order_relaxed) == 0) ? 1 : 0;
}

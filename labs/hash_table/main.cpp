#include <algorithm>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/hash_table.hpp"
#include "bts/json.hpp"

namespace {

std::vector<std::string> make_keys(std::size_t count) {
  std::vector<std::string> keys;
  keys.reserve(count);
  std::mt19937_64 generator(0xBEEFBABEULL);
  for (std::size_t i = 0; i < count; ++i) {
    keys.push_back("key-" + std::to_string(i) + "-" + std::to_string(generator()));
  }
  return keys;
}
}  // namespace

int main(int argc, char** argv) {
  const std::size_t size = bts::size_argument(argc, argv, "--size", 20000);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 3);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 15);
  const auto keys = make_keys(size);
  std::atomic<std::uint64_t> sink{0};

  const auto chained_insert = bts::benchmark("chaining-insert", warmup, repetitions, [&] {
    bts::ChainedHashTable<int> table;
    for (std::size_t i = 0; i < keys.size(); ++i) {
      table.insert(keys[i], static_cast<int>(i));
    }
    sink.store(table.size(), std::memory_order_relaxed);
  });

  const auto linear_insert = bts::benchmark("linear-probe-insert", warmup, repetitions, [&] {
    bts::LinearProbeHashTable<int> table;
    for (std::size_t i = 0; i < keys.size(); ++i) {
      table.insert(keys[i], static_cast<int>(i));
    }
    sink.store(table.size(), std::memory_order_relaxed);
  });

  bts::ChainedHashTable<int> chained;
  bts::LinearProbeHashTable<int> linear;
  for (std::size_t i = 0; i < keys.size(); ++i) {
    chained.insert(keys[i], static_cast<int>(i));
    linear.insert(keys[i], static_cast<int>(i));
  }

  const auto chained_lookup = bts::benchmark("chaining-lookup", warmup, repetitions, [&] {
    std::uint64_t sum = 0;
    for (const auto& key : keys) {
      sum += static_cast<std::uint64_t>(chained.find(key).value_or(0));
    }
    sink.store(sum, std::memory_order_relaxed);
  });

  const auto linear_lookup = bts::benchmark("linear-probe-lookup", warmup, repetitions, [&] {
    std::uint64_t sum = 0;
    for (const auto& key : keys) {
      sum += static_cast<std::uint64_t>(linear.find(key).value_or(0));
    }
    sink.store(sum, std::memory_order_relaxed);
  });

  const auto buckets = chained.bucket_sizes();
  const auto max_chain = *std::max_element(buckets.begin(), buckets.end());
  std::vector<std::size_t> bucket_histogram(max_chain + 1, 0);
  for (const std::size_t bucket_size : buckets) {
    ++bucket_histogram[bucket_size];
  }

  std::cout << "{\"lab\":\"hash-table\",\"items\":" << size
            << ",\"chaining\":{\"bucket_count\":" << chained.bucket_count()
            << ",\"load_factor\":" << chained.load_factor() << ",\"max_chain\":" << max_chain
            << ",\"bucket_histogram\":";
  bts::write_number_array(std::cout, bucket_histogram);
  std::cout << ",\"insert\":";
  bts::write_stats_json(std::cout, chained_insert);
  std::cout << ",\"lookup\":";
  bts::write_stats_json(std::cout, chained_lookup);
  std::cout << "},\"open_addressing\":{\"capacity\":" << linear.capacity()
            << ",\"load_factor\":" << linear.load_factor()
            << ",\"longest_cluster\":" << linear.longest_cluster() << ",\"insert\":";
  bts::write_stats_json(std::cout, linear_insert);
  std::cout << ",\"lookup\":";
  bts::write_stats_json(std::cout, linear_lookup);
  std::cout << "}}\n";
  return sink.load(std::memory_order_relaxed) == 0 && size > 1 ? 1 : 0;
}

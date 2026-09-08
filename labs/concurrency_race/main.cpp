#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <thread>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/counter.hpp"
#include "bts/json.hpp"

int main(int argc, char** argv) {
  const std::size_t hardware_threads = std::thread::hardware_concurrency();
  const std::size_t threads =
      bts::size_argument(argc, argv, "--threads", hardware_threads == 0 ? 4 : hardware_threads);
  const std::size_t increments = bts::size_argument(argc, argv, "--increments", 100000);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 6);
  const std::uint64_t expected = static_cast<std::uint64_t>(threads * increments);

  const auto split_observed = bts::split_load_store_counter(threads, increments);
  const auto mutex_observed = bts::mutex_counter(threads, increments);
  const auto atomic_observed = bts::atomic_counter(threads, increments);
  std::atomic<std::uint64_t> sink{0};

  const auto split_stats = bts::benchmark("split-load-store", warmup, repetitions, [&] {
    sink.store(bts::split_load_store_counter(threads, increments), std::memory_order_relaxed);
  });
  const auto mutex_stats = bts::benchmark("mutex", warmup, repetitions, [&] {
    sink.store(bts::mutex_counter(threads, increments), std::memory_order_relaxed);
  });
  const auto atomic_stats = bts::benchmark("atomic-fetch-add", warmup, repetitions, [&] {
    sink.store(bts::atomic_counter(threads, increments), std::memory_order_relaxed);
  });

  std::cout << "{\"lab\":\"concurrency-race\",\"threads\":" << threads
            << ",\"increments_per_thread\":" << increments << ",\"expected\":" << expected
            << ",\"note\":\"split load/store uses atomic individual accesses to demonstrate a "
               "lost-update race without invoking a C++ data-race "
               "UB\",\"split_load_store\":{\"observed\":"
            << split_observed << ",\"benchmark\":";
  bts::write_stats_json(std::cout, split_stats);
  std::cout << "},\"mutex\":{\"observed\":" << mutex_observed << ",\"benchmark\":";
  bts::write_stats_json(std::cout, mutex_stats);
  std::cout << "},\"atomic\":{\"observed\":" << atomic_observed << ",\"benchmark\":";
  bts::write_stats_json(std::cout, atomic_stats);
  std::cout << "}}\n";
  return (mutex_observed != expected || atomic_observed != expected ||
          sink.load(std::memory_order_relaxed) == 0)
             ? 1
             : 0;
}

#pragma once

#include <atomic>
#include <cstddef>
#include <cstdint>
#include <mutex>
#include <thread>
#include <vector>

namespace bts {

inline std::uint64_t split_load_store_counter(std::size_t threads, std::size_t increments) {
  std::atomic<std::uint64_t> counter{0};
  std::atomic<bool> start{false};
  std::vector<std::thread> workers;
  workers.reserve(threads);
  for (std::size_t t = 0; t < threads; ++t) {
    workers.emplace_back([&] {
      while (!start.load(std::memory_order_acquire)) {
        std::this_thread::yield();
      }
      for (std::size_t i = 0; i < increments; ++i) {
        const auto snapshot = counter.load(std::memory_order_relaxed);
        if ((i & 0x3FFU) == 0U) {
          std::this_thread::yield();
        }
        counter.store(snapshot + 1, std::memory_order_relaxed);
      }
    });
  }
  start.store(true, std::memory_order_release);
  for (auto& worker : workers) {
    worker.join();
  }
  return counter.load(std::memory_order_relaxed);
}

inline std::uint64_t mutex_counter(std::size_t threads, std::size_t increments) {
  std::uint64_t counter = 0;
  std::mutex mutex;
  std::atomic<bool> start{false};
  std::vector<std::thread> workers;
  workers.reserve(threads);
  for (std::size_t t = 0; t < threads; ++t) {
    workers.emplace_back([&] {
      while (!start.load(std::memory_order_acquire)) {
        std::this_thread::yield();
      }
      for (std::size_t i = 0; i < increments; ++i) {
        std::lock_guard<std::mutex> lock(mutex);
        ++counter;
      }
    });
  }
  start.store(true, std::memory_order_release);
  for (auto& worker : workers) {
    worker.join();
  }
  return counter;
}

inline std::uint64_t atomic_counter(std::size_t threads, std::size_t increments) {
  std::atomic<std::uint64_t> counter{0};
  std::atomic<bool> start{false};
  std::vector<std::thread> workers;
  workers.reserve(threads);
  for (std::size_t t = 0; t < threads; ++t) {
    workers.emplace_back([&] {
      while (!start.load(std::memory_order_acquire)) {
        std::this_thread::yield();
      }
      for (std::size_t i = 0; i < increments; ++i) {
        counter.fetch_add(1, std::memory_order_relaxed);
      }
    });
  }
  start.store(true, std::memory_order_release);
  for (auto& worker : workers) {
    worker.join();
  }
  return counter.load(std::memory_order_relaxed);
}

}  // namespace bts

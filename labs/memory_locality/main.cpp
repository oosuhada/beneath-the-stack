#include <array>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <memory>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/data_structures.hpp"
#include "bts/json.hpp"

namespace {

#if defined(__GNUC__) || defined(__clang__)
__attribute__((noinline))
#endif
std::uint64_t
read_contiguous_memory(const std::uint32_t* data, std::size_t size) {
  volatile const std::uint32_t* observed = data;
  std::uint64_t total = 0;
  for (std::size_t i = 0; i < size; ++i) {
    total += observed[i];
  }
  return total;
}

constexpr std::size_t kFrameItems = 4096;

#if defined(__GNUC__) || defined(__clang__)
__attribute__((noinline))
#endif
std::uint64_t
touch_stack_frame() {
  volatile std::uint32_t values[kFrameItems] = {};
  std::uint64_t total = 0;
  for (std::size_t i = 0; i < kFrameItems; ++i) {
    values[i] = static_cast<std::uint32_t>(i);
    total += values[i];
  }
  return total;
}

#if defined(__GNUC__) || defined(__clang__)
__attribute__((noinline))
#endif
std::uint64_t
touch_heap_block() {
  auto owned = std::make_unique<std::uint32_t[]>(kFrameItems);
  volatile std::uint32_t* values = owned.get();
  std::uint64_t total = 0;
  for (std::size_t i = 0; i < kFrameItems; ++i) {
    values[i] = static_cast<std::uint32_t>(i);
    total += values[i];
  }
  return total;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t size = bts::size_argument(argc, argv, "--size", 200000);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 10);
  std::atomic<std::uint64_t> sink{0};

  bts::DynamicArray<std::uint32_t> contiguous;
  contiguous.reserve(size);
  bts::SinglyLinkedList<std::uint32_t> linked;
  for (std::size_t i = 0; i < size; ++i) {
    const auto value = static_cast<std::uint32_t>(i & 1023U);
    contiguous.push_back(value);
    linked.push_back(value);
  }

  const auto contiguous_walk =
      bts::benchmark("contiguous-array-traversal", warmup, repetitions, [&] {
        sink.store(read_contiguous_memory(contiguous.begin(), contiguous.size()),
                   std::memory_order_relaxed);
      });

  const auto pointer_walk = bts::benchmark("linked-list-pointer-chase", warmup, repetitions, [&] {
    std::uint64_t total = 0;
    linked.for_each([&](std::uint32_t value) {
      std::atomic_signal_fence(std::memory_order_seq_cst);
      total += value;
    });
    sink.store(total, std::memory_order_relaxed);
  });

  const auto stack_frame = bts::benchmark("stack-frame-touch-4096-int", warmup, repetitions, [&] {
    sink.store(touch_stack_frame(), std::memory_order_relaxed);
  });

  const auto heap_block = bts::benchmark("heap-block-touch-4096-int", warmup, repetitions, [&] {
    sink.store(touch_heap_block(), std::memory_order_relaxed);
  });

  std::cout << "{\"lab\":\"memory-locality\",\"items\":" << size
            << ",\"note\":\"same values; layout differs between contiguous storage and separately "
               "allocated nodes\",\"contiguous\":";
  bts::write_stats_json(std::cout, contiguous_walk);
  std::cout << ",\"linked\":";
  bts::write_stats_json(std::cout, pointer_walk);
  std::cout << ",\"stack_frame\":";
  bts::write_stats_json(std::cout, stack_frame);
  std::cout << ",\"heap_block\":";
  bts::write_stats_json(std::cout, heap_block);
  std::cout << "}\n";
  return sink.load(std::memory_order_relaxed) == 0 ? 1 : 0;
}

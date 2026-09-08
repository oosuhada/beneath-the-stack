#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <stdexcept>
#include <vector>

#include "bts/allocator.hpp"
#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

struct WorkloadResult {
  bts::AllocatorStats stats;
  std::size_t active_at_peak = 0;
};

std::uint64_t xorshift(std::uint64_t& state) {
  state ^= state << 13;
  state ^= state >> 7;
  state ^= state << 17;
  return state;
}

WorkloadResult mixed_workload(bool coalescing, std::size_t operations, std::uint64_t seed) {
  bts::FreeListAllocator allocator(1U << 20, coalescing);
  std::vector<void*> active;
  active.reserve(operations / 2 + 1);
  std::size_t peak_active = 0;
  std::uint64_t state = seed;
  for (std::size_t op = 0; op < operations; ++op) {
    const std::uint64_t choice = xorshift(state);
    if (!active.empty() && choice % 100 < 45) {
      const std::size_t index = static_cast<std::size_t>(xorshift(state) % active.size());
      allocator.deallocate(active[index]);
      active[index] = active.back();
      active.pop_back();
    } else {
      const std::size_t bytes = 8 + static_cast<std::size_t>(xorshift(state) % 249);
      if (void* pointer = allocator.allocate(bytes); pointer != nullptr) {
        active.push_back(pointer);
      }
    }
    peak_active = std::max(peak_active, active.size());
  }
  for (void* pointer : active) {
    allocator.deallocate(pointer);
  }
  return WorkloadResult{allocator.stats(), peak_active};
}

bool fragmentation_probe(bool coalescing, bts::AllocatorStats& after_free) {
  bts::FreeListAllocator allocator(1280, coalescing);
  void* a = allocator.allocate(240);
  void* b = allocator.allocate(240);
  void* c = allocator.allocate(240);
  void* d = allocator.allocate(240);
  if (a == nullptr || b == nullptr || c == nullptr || d == nullptr) {
    throw std::runtime_error("fragmentation probe setup did not fit arena");
  }
  allocator.deallocate(b);
  allocator.deallocate(c);
  after_free = allocator.stats();
  void* large = allocator.allocate(400);
  const bool success = large != nullptr;
  if (large != nullptr) {
    allocator.deallocate(large);
  }
  allocator.deallocate(a);
  allocator.deallocate(d);
  return success;
}

bool bump_reuse_failure() {
  bts::BumpAllocator allocator(1024);
  std::vector<void*> allocations;
  for (int i = 0; i < 6; ++i) {
    allocations.push_back(allocator.allocate(128));
  }
  for (void* pointer : allocations) {
    allocator.deallocate(pointer);
  }
  return allocator.allocate(400) == nullptr;
}

void write_allocator_stats(const bts::AllocatorStats& stats) {
  std::cout << "{\"capacity_bytes\":" << stats.capacity_bytes
            << ",\"live_requested_bytes\":" << stats.live_requested_bytes
            << ",\"live_reserved_bytes\":" << stats.live_reserved_bytes
            << ",\"peak_live_reserved_bytes\":" << stats.peak_live_reserved_bytes
            << ",\"free_payload_bytes\":" << stats.free_payload_bytes
            << ",\"largest_free_block_bytes\":" << stats.largest_free_block_bytes
            << ",\"internal_fragmentation_bytes\":" << stats.internal_fragmentation_bytes
            << ",\"external_fragmentation_bytes\":" << stats.external_fragmentation_bytes
            << ",\"block_count\":" << stats.block_count << ",\"allocations\":" << stats.allocations
            << ",\"frees\":" << stats.frees
            << ",\"reused_allocations\":" << stats.reused_allocations
            << ",\"failed_allocations\":" << stats.failed_allocations << '}';
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t operations = bts::size_argument(argc, argv, "--operations", 10000);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 8);
  constexpr std::uint64_t kSeed = 0x5eed1234ULL;

  bts::AllocatorStats fragmented_without_coalesce;
  bts::AllocatorStats fragmented_with_coalesce;
  const bool no_coalesce_large_allocation = fragmentation_probe(false, fragmented_without_coalesce);
  const bool coalesced_large_allocation = fragmentation_probe(true, fragmented_with_coalesce);
  const bool bump_failed_after_free = bump_reuse_failure();

  const WorkloadResult no_coalesce = mixed_workload(false, operations, kSeed);
  const WorkloadResult coalesced = mixed_workload(true, operations, kSeed);
  std::atomic<std::size_t> sink{0};

  const auto no_coalesce_time = bts::benchmark("free-list-no-coalescing", warmup, repetitions, [&] {
    const auto result = mixed_workload(false, operations, kSeed);
    sink.store(result.stats.failed_allocations + result.stats.reused_allocations,
               std::memory_order_relaxed);
  });
  const auto coalesced_time = bts::benchmark("free-list-with-coalescing", warmup, repetitions, [&] {
    const auto result = mixed_workload(true, operations, kSeed);
    sink.store(result.stats.failed_allocations + result.stats.reused_allocations,
               std::memory_order_relaxed);
  });

  std::cout << "{\"lab\":\"allocator\",\"seed\":" << kSeed << ",\"operations\":" << operations
            << ",\"alignment_bytes\":" << bts::FreeListAllocator::kAlignment
            << ",\"metadata_bytes_per_block\":" << bts::FreeListAllocator::metadata_bytes()
            << ",\"intentional_failures\":{\"bump_cannot_reuse_free\":"
            << (bump_failed_after_free ? "true" : "false")
            << ",\"large_allocation_without_coalescing\":"
            << (no_coalesce_large_allocation ? "true" : "false")
            << ",\"large_allocation_with_coalescing\":"
            << (coalesced_large_allocation ? "true" : "false")
            << "},\"fragmentation_probe\":{\"no_coalesce\":";
  write_allocator_stats(fragmented_without_coalesce);
  std::cout << ",\"coalesced\":";
  write_allocator_stats(fragmented_with_coalesce);
  std::cout << "},\"mixed\":{\"no_coalesce\":{\"peak_active\":" << no_coalesce.active_at_peak
            << ",\"stats\":";
  write_allocator_stats(no_coalesce.stats);
  std::cout << "},\"coalesced\":{\"peak_active\":" << coalesced.active_at_peak << ",\"stats\":";
  write_allocator_stats(coalesced.stats);
  std::cout << "}},\"benchmark\":{\"no_coalesce\":";
  bts::write_stats_json(std::cout, no_coalesce_time);
  std::cout << ",\"coalesced\":";
  bts::write_stats_json(std::cout, coalesced_time);
  std::cout << "}}\n";

  return bump_failed_after_free && !no_coalesce_large_allocation && coalesced_large_allocation ? 0
                                                                                               : 1;
}

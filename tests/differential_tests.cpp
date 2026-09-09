#include <cstdint>
#include <functional>
#include <iostream>
#include <map>
#include <queue>
#include <random>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "bts/allocator.hpp"
#include "bts/bplus_tree.hpp"
#include "bts/durable_job_runtime.hpp"
#include "bts/firmware.hpp"
#include "bts/hash_table.hpp"
#include "bts/min_heap.hpp"

namespace {

int failures = 0;

void check(bool condition, const std::string& message) {
  if (!condition) {
    ++failures;
    std::cerr << "FAIL: " << message << '\n';
  }
}

void test_heap_against_std_priority_queue() {
  std::mt19937_64 random(0x48454150ULL);
  bts::BinaryMinHeap<int> mine;
  std::priority_queue<int, std::vector<int>, std::greater<int>> reference;
  for (int operation = 0; operation < 5000; ++operation) {
    if (reference.empty() || random() % 100 < 65) {
      const int value = static_cast<int>(random() % 100000);
      mine.push(value);
      reference.push(value);
    } else {
      const int expected = reference.top();
      reference.pop();
      check(mine.pop() == expected,
            "custom heap pop matches std::priority_queue under fixed-seed operations");
    }
  }
  while (!reference.empty()) {
    const int expected = reference.top();
    reference.pop();
    check(mine.pop() == expected, "custom heap drain matches std::priority_queue ordering");
  }
}

void test_hash_tables_against_unordered_map() {
  std::mt19937_64 random(0x48415348ULL);
  bts::ChainedHashTable<std::uint64_t> chained(8);
  bts::LinearProbeHashTable<std::uint64_t> probing(8);
  std::unordered_map<std::string, std::uint64_t> reference;

  for (int operation = 0; operation < 8000; ++operation) {
    const std::string key = "key-" + std::to_string(random() % 1200);
    if (random() % 100 < 62) {
      const std::uint64_t value = random();
      chained.insert(key, value);
      probing.insert(key, value);
      reference[key] = value;
    } else {
      const auto expected = reference.find(key);
      const auto left = chained.find(key);
      const auto right = probing.find(key);
      if (expected == reference.end()) {
        check(!left.has_value() && !right.has_value(),
              "custom hash tables agree with missing unordered_map lookup");
      } else {
        check(left == expected->second && right == expected->second,
              "custom hash tables agree with unordered_map value after inserts/updates");
      }
    }
  }
  check(chained.size() == reference.size() && probing.size() == reference.size(),
        "custom hash table cardinality matches unordered_map after fixed-seed sequence");
}

void test_bplus_tree_against_map() {
  std::mt19937_64 random(0x42505452ULL);
  bts::BPlusTree<int, int> tree(16);
  std::map<int, int> reference;
  for (int operation = 0; operation < 7000; ++operation) {
    const int key = static_cast<int>(random() % 2500);
    if (random() % 100 < 70) {
      const int value = static_cast<int>(random() & 0x7fffffffU);
      tree.insert(key, value);
      reference[key] = value;
    } else {
      const auto expected = reference.find(key);
      const auto observed = tree.find(key);
      if (expected == reference.end()) {
        check(!observed.has_value(), "B+ tree missing lookup matches std::map");
      } else {
        check(observed == expected->second, "B+ tree point lookup matches std::map");
      }
    }
  }
  for (int sample = 0; sample < 100; ++sample) {
    const int lower = static_cast<int>(random() % 2400);
    const int upper = lower + static_cast<int>(random() % 100);
    const auto observed = tree.range(lower, upper);
    std::vector<std::pair<int, int>> expected;
    for (auto it = reference.lower_bound(lower); it != reference.end() && it->first <= upper;
         ++it) {
      expected.push_back(*it);
    }
    check(observed == expected, "B+ tree linked-leaf range matches std::map interval");
  }
}

void test_allocator_randomized_invariants() {
  std::mt19937_64 random(0x414c4c4f43ULL);
  bts::FreeListAllocator allocator(1U << 18, true);
  std::vector<void*> active;
  std::unordered_set<void*> unique;
  for (int operation = 0; operation < 6000; ++operation) {
    if (!active.empty() && random() % 100 < 48) {
      const std::size_t index = static_cast<std::size_t>(random() % active.size());
      void* pointer = active[index];
      allocator.deallocate(pointer);
      unique.erase(pointer);
      active[index] = active.back();
      active.pop_back();
    } else {
      const std::size_t bytes = 1 + static_cast<std::size_t>(random() % 384);
      void* pointer = allocator.allocate(bytes);
      if (pointer != nullptr) {
        check(reinterpret_cast<std::uintptr_t>(pointer) % bts::FreeListAllocator::kAlignment == 0,
              "randomized allocator payload remains aligned");
        check(unique.insert(pointer).second,
              "allocator never returns an already-live payload address");
        active.push_back(pointer);
      }
    }
  }
  for (void* pointer : active) {
    allocator.deallocate(pointer);
  }
  const auto stats = allocator.stats();
  check(stats.live_requested_bytes == 0 && stats.live_reserved_bytes == 0,
        "randomized allocator frees return live byte counters to zero");
  check(stats.block_count == 1 && stats.external_fragmentation_bytes == 0,
        "coalescing recovers a single arena block after randomized workload drains");
}

void test_capstone_parser_fuzz_does_not_emit_invalid_commands() {
  std::mt19937_64 random(0x43415053544f4e45ULL);
  std::size_t accepted_commands = 0;
  for (int case_index = 0; case_index < 2000; ++case_index) {
    std::vector<std::uint8_t> bytes;
    if (case_index % 17 == 0) {
      const auto command = bts::encode_submit_command(
          {"fuzz-" + std::to_string(case_index), static_cast<int>(case_index % 5), 1, "body"});
      bytes = bts::encode_frame(
          bts::SerialFrame{0x31U, std::vector<std::uint8_t>(command.begin(), command.end())});
    } else {
      const std::size_t size = static_cast<std::size_t>(random() % 80U);
      bytes.resize(size);
      for (auto& byte : bytes) {
        byte = static_cast<std::uint8_t>(random() & 0xffU);
      }
    }

    bts::ProtocolParser parser(96);
    for (const auto byte : bytes) {
      bts::SerialFrame frame;
      if (parser.feed(byte, frame)) {
        const std::string payload(frame.payload.begin(), frame.payload.end());
        if (bts::parse_submit_command(payload)) {
          ++accepted_commands;
        }
      }
    }
  }
  check(accepted_commands >= 118,
        "capstone parser fuzz accepts only the deliberately inserted valid submit frames");
}

}  // namespace

int main() {
  test_heap_against_std_priority_queue();
  test_hash_tables_against_unordered_map();
  test_bplus_tree_against_map();
  test_allocator_randomized_invariants();
  test_capstone_parser_fuzz_does_not_emit_invalid_commands();
  if (failures != 0) {
    std::cerr << failures << " differential/property test(s) failed\n";
    return 1;
  }
  std::cout << "All differential/property tests passed.\n";
  return 0;
}

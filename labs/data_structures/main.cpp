#include <algorithm>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <numeric>
#include <random>
#include <string>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/data_structures.hpp"
#include "bts/json.hpp"

namespace {

std::string word_for(std::size_t value) {
  std::string word(6, 'a');
  for (std::size_t i = 0; i < word.size(); ++i) {
    word[word.size() - i - 1] = static_cast<char>('a' + (value % 26));
    value /= 26;
  }
  return word;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t size = bts::size_argument(argc, argv, "--size", 12000);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 8);
  std::atomic<std::uint64_t> sink{0};

  std::size_t capacity_changes = 0;
  bts::DynamicArray<std::size_t> array;
  std::size_t previous_capacity = array.capacity();
  for (std::size_t i = 0; i < size; ++i) {
    array.push_back(i);
    if (array.capacity() != previous_capacity) {
      ++capacity_changes;
      previous_capacity = array.capacity();
    }
  }

  const auto dynamic_append = bts::benchmark("dynamic-array-append", warmup, repetitions, [&] {
    bts::DynamicArray<std::size_t> values;
    for (std::size_t i = 0; i < size; ++i) {
      values.push_back(i);
    }
    sink.store(values[values.size() - 1], std::memory_order_relaxed);
  });

  const auto linked_append = bts::benchmark("linked-list-append", warmup, repetitions, [&] {
    bts::SinglyLinkedList<std::size_t> values;
    for (std::size_t i = 0; i < size; ++i) {
      values.push_back(i);
    }
    sink.store(values.size(), std::memory_order_relaxed);
  });

  std::vector<int> keys(size);
  std::iota(keys.begin(), keys.end(), 0);
  std::mt19937 random(20260908);
  std::shuffle(keys.begin(), keys.end(), random);
  bts::BinarySearchTree<int> random_tree;
  for (const int key : keys) {
    random_tree.insert(key);
  }

  const std::size_t sorted_size = std::min<std::size_t>(size, 1500);
  bts::BinarySearchTree<int> sorted_tree;
  for (std::size_t i = 0; i < sorted_size; ++i) {
    sorted_tree.insert(static_cast<int>(i));
  }
  const auto bst_lookup = bts::benchmark("bst-random-lookup", warmup, repetitions, [&] {
    std::size_t hits = 0;
    for (std::size_t i = 0; i < size; i += 7) {
      hits += random_tree.contains(static_cast<int>(i)) ? 1 : 0;
    }
    sink.store(hits, std::memory_order_relaxed);
  });

  bts::Trie trie;
  for (std::size_t i = 0; i < size; ++i) {
    trie.insert(word_for(i));
  }
  const auto trie_lookup = bts::benchmark("trie-prefix-lookup", warmup, repetitions, [&] {
    std::size_t hits = 0;
    for (std::size_t i = 0; i < size; i += 11) {
      hits += trie.contains(word_for(i)) ? 1 : 0;
    }
    sink.store(hits, std::memory_order_relaxed);
  });

  const auto union_find = bts::benchmark("union-find-chain-connect", warmup, repetitions, [&] {
    bts::UnionFind groups(size);
    for (std::size_t i = 1; i < size; ++i) {
      groups.unite(i - 1, i);
    }
    sink.store(groups.find(size - 1), std::memory_order_relaxed);
  });

  std::cout << "{\"lab\":\"data-structures\",\"items\":" << size
            << ",\"dynamic_array\":{\"capacity\":" << array.capacity()
            << ",\"capacity_changes\":" << capacity_changes << ",\"append\":";
  bts::write_stats_json(std::cout, dynamic_append);
  std::cout << "},\"linked_list\":{\"append\":";
  bts::write_stats_json(std::cout, linked_append);
  std::cout << "},\"bst\":{\"random_height\":" << random_tree.height()
            << ",\"sorted_input_items\":" << sorted_size
            << ",\"sorted_height\":" << sorted_tree.height() << ",\"lookup\":";
  bts::write_stats_json(std::cout, bst_lookup);
  std::cout << "},\"trie\":{\"words\":" << trie.size() << ",\"lookup\":";
  bts::write_stats_json(std::cout, trie_lookup);
  std::cout << "},\"union_find\":{";
  std::cout << "\"benchmark\":";
  bts::write_stats_json(std::cout, union_find);
  std::cout << "}}\n";
  return sink.load(std::memory_order_relaxed) > size ? 1 : 0;
}

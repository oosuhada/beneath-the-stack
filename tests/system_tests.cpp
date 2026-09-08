#include <algorithm>
#include <cstdint>
#include <iostream>
#include <numeric>
#include <random>
#include <stdexcept>
#include <string>
#include <vector>

#include "bts/algorithm_choice.hpp"
#include "bts/benchmark.hpp"
#include "bts/bplus_tree.hpp"
#include "bts/counter.hpp"
#include "bts/graph.hpp"
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
void test_hash_tables() {
  bts::ChainedHashTable<int> chained(8);
  bts::LinearProbeHashTable<int> linear(8);
  for (int i = 0; i < 2000; ++i) {
    const std::string key = "key-" + std::to_string(i);
    chained.insert(key, i * 2);
    linear.insert(key, i * 2);
  }
  check(chained.size() == 2000, "chained hash table retains all inserted keys");
  check(linear.size() == 2000, "linear-probe table retains all inserted keys");
  check(chained.find("key-1777") == 3554, "chained hash lookup returns expected value");
  check(linear.find("key-1777") == 3554, "linear-probe lookup returns expected value");
  chained.insert("key-1777", 99);
  linear.insert("key-1777", 99);
  check(chained.find("key-1777") == 99, "chained hash update replaces value");
  check(linear.find("key-1777") == 99, "linear-probe update replaces value");
  check(!chained.find("missing").has_value(), "missing chained key returns nullopt");
  check(!linear.find("missing").has_value(), "missing linear-probe key returns nullopt");
}

void test_heap() {
  bts::BinaryMinHeap<int> heap;
  for (const int value : {9, 3, 7, 1, 5, 2, 8, 4, 6}) {
    heap.push(value);
  }
  std::vector<int> ordered;
  while (!heap.empty()) {
    ordered.push_back(heap.pop());
  }
  check(ordered == std::vector<int>({1, 2, 3, 4, 5, 6, 7, 8, 9}),
        "binary heap pops in priority order");
}

void test_graph() {
  bts::Graph graph(7);
  graph.add_edge(0, 1);
  graph.add_edge(0, 2);
  graph.add_edge(1, 3);
  graph.add_edge(2, 4);
  graph.add_edge(3, 5);
  graph.add_edge(4, 5);
  graph.add_edge(5, 6);
  const auto bfs = graph.bfs(0);
  const auto dfs = graph.dfs(0);
  const auto path = bts::Graph::reconstruct_path(0, 6, bfs.parent);
  check(bfs.order.size() == 7, "BFS visits each reachable node once");
  check(dfs.order.size() == 7, "DFS visits each reachable node once");
  check(path.size() == 5, "BFS parent tree reconstructs a shortest path");
  check(path.front() == 0 && path.back() == 6, "shortest path endpoints are correct");
}

void test_algorithm_choice_failures() {
  bts::WeightedGraph weighted(5);
  weighted.add_edge(0, 1, 100);
  weighted.add_edge(1, 3, 1);
  weighted.add_edge(0, 2, 1);
  weighted.add_edge(2, 4, 1);
  weighted.add_edge(4, 3, 1);
  const auto [hop_path, hop_cost] = weighted.hop_shortest_path_and_weight(0, 3);
  const auto shortest = weighted.dijkstra(0);
  check(hop_path.size() == 3 && hop_cost == 101,
        "BFS-by-hops fixture deliberately chooses fewer edges but higher weight");
  check(shortest.distance[3] == 3, "Dijkstra finds lower weighted cost on the same graph");

  const auto dag = bts::topological_sort(4, {{0, 1}, {0, 2}, {1, 3}, {2, 3}});
  const auto cycle = bts::topological_sort(3, {{0, 1}, {1, 2}, {2, 0}});
  check(!dag.cycle_detected && dag.order.size() == 4,
        "Kahn topological sort emits all DAG vertices");
  check(cycle.cycle_detected,
        "topological sort exposes a cycle instead of returning a false ordering");

  const auto naive = bts::fibonacci_naive(20);
  const auto memoized = bts::fibonacci_memoized(20);
  check(naive.value == memoized.value && naive.calls > memoized.calls * 100,
        "memoized DP preserves result while eliminating repeated recursive subproblems");

  const std::vector<int> sorted = {1, 3, 5, 7, 9, 11};
  check(
      bts::binary_search_exact(sorted, 7) == 3 && !bts::binary_search_exact(sorted, 8).has_value(),
      "binary search implementation handles present and missing sorted targets");
}

void test_bplus_tree() {
  bts::BPlusTree<int, int> tree(8);
  std::vector<int> keys(1500);
  std::iota(keys.begin(), keys.end(), 0);
  std::mt19937 generator(777);
  std::shuffle(keys.begin(), keys.end(), generator);
  for (const int key : keys) {
    tree.insert(key, key * 10);
  }
  for (int key = 0; key < 1500; key += 17) {
    check(tree.find(key) == key * 10, "B+ tree lookup survives randomized insertion");
  }
  check(!tree.find(2001).has_value(), "B+ tree missing key returns nullopt");
  const auto range = tree.range(144, 166);
  check(range.size() == 23, "B+ tree linked leaves support inclusive range scan");
  check(range.front().first == 144 && range.back().first == 166,
        "B+ tree range preserves sorted key order");
  check(tree.height() >= 2, "B+ tree splits root under load");
  check(tree.leaf_split_count() > 0 && tree.internal_split_count() > 0,
        "B+ tree exposes both leaf and internal split events under randomized load");
}

void test_concurrency_guards() {
  constexpr std::size_t threads = 4;
  constexpr std::size_t increments = 5000;
  constexpr std::uint64_t expected = threads * increments;
  const auto split = bts::split_load_store_counter(threads, increments);
  check(split <= expected, "split load/store counter cannot exceed intended increments");
  check(bts::mutex_counter(threads, increments) == expected, "mutex protects compound increment");
  check(bts::atomic_counter(threads, increments) == expected,
        "atomic fetch_add preserves increments");
}
void test_benchmark_statistics() {
  const auto stats = bts::benchmark("noop", 1, 3, [] {});
  check(stats.repetitions == 3, "benchmark records configured repetitions");
  check(stats.p95_ms >= stats.p50_ms, "p95 is not below p50");
  check(stats.max_ms >= stats.min_ms, "benchmark min/max ordering is valid");
}

}  // namespace

int main() {
  test_hash_tables();
  test_heap();
  test_graph();
  test_algorithm_choice_failures();
  test_bplus_tree();
  test_concurrency_guards();
  test_benchmark_statistics();
  if (failures != 0) {
    std::cerr << failures << " test(s) failed\n";
    return 1;
  }
  std::cout << "All systems tests passed.\n";
  return 0;
}


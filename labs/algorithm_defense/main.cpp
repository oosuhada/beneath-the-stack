#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <numeric>
#include <vector>

#include "bts/algorithm_choice.hpp"
#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

#if defined(__GNUC__) || defined(__clang__)
__attribute__((noinline))
#endif
std::optional<std::size_t>
measured_linear_search(const std::vector<int>& values, int query) {
  return bts::linear_search_exact(values, query);
}

#if defined(__GNUC__) || defined(__clang__)
__attribute__((noinline))
#endif
std::optional<std::size_t>
measured_binary_search(const std::vector<int>& values, int query) {
  return bts::binary_search_exact(values, query);
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t size = bts::size_argument(argc, argv, "--size", 1000000);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 6);
  const unsigned fib_n = static_cast<unsigned>(bts::size_argument(argc, argv, "--fib", 32));

  bts::WeightedGraph weighted(5);
  weighted.add_edge(0, 1, 100);
  weighted.add_edge(1, 3, 1);
  weighted.add_edge(0, 2, 1);
  weighted.add_edge(2, 4, 1);
  weighted.add_edge(4, 3, 1);
  const auto [bfs_path, bfs_cost] = weighted.hop_shortest_path_and_weight(0, 3);
  const auto dijkstra = weighted.dijkstra(0);

  const auto dag = bts::topological_sort(6, {{0, 2}, {1, 2}, {1, 3}, {2, 4}, {3, 4}, {4, 5}});
  const auto cyclic = bts::topological_sort(3, {{0, 1}, {1, 2}, {2, 0}});
  const auto naive_fib = bts::fibonacci_naive(fib_n);
  const auto memo_fib = bts::fibonacci_memoized(fib_n);

  std::vector<int> values(size);
  std::iota(values.begin(), values.end(), 0);
  std::vector<int> queries;
  queries.reserve(1000);
  std::uint64_t state = 0x42494e415259ULL;
  for (int i = 0; i < 1000; ++i) {
    state ^= state << 13;
    state ^= state >> 7;
    state ^= state << 17;
    queries.push_back(static_cast<int>(state % (size + size / 10 + 1)));
  }
  std::atomic<std::uint64_t> sink{0};
  const auto linear = bts::benchmark("linear-search-sorted-array", warmup, repetitions, [&] {
    std::uint64_t total = 0;
    for (const int query : queries) {
      const auto found = measured_linear_search(values, query);
      total += found.has_value() ? *found : 0;
    }
    sink.store(total, std::memory_order_relaxed);
  });
  const auto binary = bts::benchmark("binary-search-sorted-array", warmup, repetitions, [&] {
    std::uint64_t total = 0;
    for (const int query : queries) {
      const auto found = measured_binary_search(values, query);
      total += found.has_value() ? *found : 0;
    }
    sink.store(total, std::memory_order_relaxed);
  });

  std::cout << "{\"lab\":\"algorithm-defense\",\"weighted_shortest_path\":{\"bad_candidate\":\"BFS "
               "by hop count\",\"bfs_hop_path\":[";
  for (std::size_t i = 0; i < bfs_path.size(); ++i) {
    if (i != 0) std::cout << ',';
    std::cout << bfs_path[i];
  }
  std::cout << "],\"bfs_weighted_cost\":" << bfs_cost
            << ",\"dijkstra_cost\":" << dijkstra.distance[3]
            << "},\"topological_sort\":{\"dag_order_size\":" << dag.order.size()
            << ",\"cycle_detected_in_dag\":" << (dag.cycle_detected ? "true" : "false")
            << ",\"cycle_detected_in_cycle_fixture\":" << (cyclic.cycle_detected ? "true" : "false")
            << "},\"dynamic_programming\":{\"n\":" << fib_n << ",\"value\":" << naive_fib.value
            << ",\"naive_calls\":" << naive_fib.calls << ",\"memoized_calls\":" << memo_fib.calls
            << "},\"binary_search\":{\"sorted_items\":" << size << ",\"queries\":" << queries.size()
            << ",\"seed\":72895878732377,\"linear\":";
  bts::write_stats_json(std::cout, linear);
  std::cout << ",\"binary\":";
  bts::write_stats_json(std::cout, binary);
  std::cout << "}}\n";
  return bfs_cost > dijkstra.distance[3] && !dag.cycle_detected && cyclic.cycle_detected &&
                 naive_fib.value == memo_fib.value && naive_fib.calls > memo_fib.calls
             ? 0
             : 1;
}

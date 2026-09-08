#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <random>
#include <unordered_set>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/graph.hpp"
#include "bts/json.hpp"

namespace {

struct GridFixture {
  bts::Graph graph;
  std::vector<int> blocked;
  int width;
  int height;
};

GridFixture make_grid(int width, int height, std::uint32_t seed, double wall_probability,
                      bool carve_border_path) {
  bts::Graph graph(static_cast<std::size_t>(width * height));
  std::mt19937 generator(seed);
  std::bernoulli_distribution wall(wall_probability);
  std::vector<bool> blocked(static_cast<std::size_t>(width * height), false);
  for (int row = 0; row < height; ++row) {
    for (int col = 0; col < width; ++col) {
      const int id = row * width + col;
      blocked[static_cast<std::size_t>(id)] = wall(generator);
      if (carve_border_path && (row == 0 || col == width - 1)) {
        blocked[static_cast<std::size_t>(id)] = false;
      }
    }
  }
  blocked.front() = false;
  blocked.back() = false;

  const auto connect = [&](int row, int col, int next_row, int next_col) {
    const int from = row * width + col;
    const int to = next_row * width + next_col;
    if (!blocked[static_cast<std::size_t>(from)] && !blocked[static_cast<std::size_t>(to)]) {
      graph.add_edge(from, to);
    }
  };
  for (int row = 0; row < height; ++row) {
    for (int col = 0; col < width; ++col) {
      if (col + 1 < width) {
        connect(row, col, row, col + 1);
      }
      if (row + 1 < height) {
        connect(row, col, row + 1, col);
      }
    }
  }

  std::vector<int> blocked_ids;
  for (std::size_t i = 0; i < blocked.size(); ++i) {
    if (blocked[i]) {
      blocked_ids.push_back(static_cast<int>(i));
    }
  }
  return GridFixture{std::move(graph), std::move(blocked_ids), width, height};
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t side = bts::size_argument(argc, argv, "--side", 120);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 3);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 20);
  const auto demo = make_grid(12, 10, 4242, 0.18, true);
  const auto bfs_demo = demo.graph.bfs(0);
  const auto dfs_demo = demo.graph.dfs(0);
  const int goal = demo.width * demo.height - 1;
  const auto bfs_path = bts::Graph::reconstruct_path(0, goal, bfs_demo.parent);
  const auto dfs_path = bts::Graph::reconstruct_path(0, goal, dfs_demo.parent);

  const int benchmark_side = static_cast<int>(side);
  const auto fixture = make_grid(benchmark_side, benchmark_side, 99173, 0.14, true);
  std::atomic<std::uint64_t> sink{0};
  const auto bfs_stats = bts::benchmark("bfs-grid", warmup, repetitions, [&] {
    const auto result = fixture.graph.bfs(0);
    sink.store(result.order.size(), std::memory_order_relaxed);
  });
  const auto dfs_stats = bts::benchmark("dfs-grid", warmup, repetitions, [&] {
    const auto result = fixture.graph.dfs(0);
    sink.store(result.order.size(), std::memory_order_relaxed);
  });

  std::cout << "{\"lab\":\"graph-traversal\",\"benchmark_grid\":{\"width\":" << benchmark_side
            << ",\"height\":" << benchmark_side << "},\"bfs\":";
  bts::write_stats_json(std::cout, bfs_stats);
  std::cout << ",\"dfs\":";
  bts::write_stats_json(std::cout, dfs_stats);
  std::cout << ",\"frontier_memory\":{\"bfs_peak_nodes\":" << bfs_demo.peak_frontier
            << ",\"dfs_peak_nodes\":" << dfs_demo.peak_frontier
            << "},\"demo\":{\"width\":" << demo.width << ",\"height\":" << demo.height
            << ",\"blocked\":";
  bts::write_number_array(std::cout, demo.blocked);
  std::cout << ",\"bfs_order\":";
  bts::write_number_array(std::cout, bfs_demo.order);
  std::cout << ",\"dfs_order\":";
  bts::write_number_array(std::cout, dfs_demo.order);
  std::cout << ",\"bfs_path\":";
  bts::write_number_array(std::cout, bfs_path);
  std::cout << ",\"dfs_path\":";
  bts::write_number_array(std::cout, dfs_path);
  std::cout << "}}\n";
  return bfs_path.empty() || sink.load(std::memory_order_relaxed) == 0 ? 1 : 0;
}

#pragma once

#include <cstddef>
#include <cstdint>
#include <limits>
#include <optional>
#include <queue>
#include <stdexcept>
#include <utility>
#include <vector>

#include "bts/min_heap.hpp"

namespace bts {

inline std::optional<std::size_t> linear_search_exact(const std::vector<int>& values, int target) {
  for (std::size_t i = 0; i < values.size(); ++i) {
    if (values[i] == target) {
      return i;
    }
  }
  return std::nullopt;
}

inline std::optional<std::size_t> binary_search_exact(const std::vector<int>& values, int target) {
  std::size_t low = 0;
  std::size_t high = values.size();
  while (low < high) {
    const std::size_t middle = low + (high - low) / 2;
    if (values[middle] < target) {
      low = middle + 1;
    } else {
      high = middle;
    }
  }
  if (low < values.size() && values[low] == target) {
    return low;
  }
  return std::nullopt;
}

struct WeightedEdge {
  int to = 0;
  std::uint64_t weight = 0;
};

struct ShortestPathResult {
  std::vector<std::uint64_t> distance;
  std::vector<int> parent;
};

class WeightedGraph {
 public:
  explicit WeightedGraph(std::size_t vertices) : adjacency_(vertices) {}

  void add_edge(int from, int to, std::uint64_t weight, bool undirected = false) {
    validate(from);
    validate(to);
    adjacency_[static_cast<std::size_t>(from)].push_back(WeightedEdge{to, weight});
    if (undirected) {
      adjacency_[static_cast<std::size_t>(to)].push_back(WeightedEdge{from, weight});
    }
  }

  ShortestPathResult dijkstra(int start) const {
    validate(start);
    constexpr std::uint64_t kInfinity = std::numeric_limits<std::uint64_t>::max();
    struct Candidate {
      std::uint64_t distance;
      int vertex;
      bool operator<(const Candidate& other) const {
        return distance < other.distance || (distance == other.distance && vertex < other.vertex);
      }
    };

    ShortestPathResult result;
    result.distance.assign(adjacency_.size(), kInfinity);
    result.parent.assign(adjacency_.size(), -1);
    result.distance[static_cast<std::size_t>(start)] = 0;
    BinaryMinHeap<Candidate> frontier;
    frontier.push(Candidate{0, start});
    while (!frontier.empty()) {
      const Candidate current = frontier.pop();
      if (current.distance != result.distance[static_cast<std::size_t>(current.vertex)]) {
        continue;
      }
      for (const auto& edge : adjacency_[static_cast<std::size_t>(current.vertex)]) {
        if (edge.weight > kInfinity - current.distance) {
          continue;
        }
        const std::uint64_t candidate = current.distance + edge.weight;
        auto& known = result.distance[static_cast<std::size_t>(edge.to)];
        if (candidate < known) {
          known = candidate;
          result.parent[static_cast<std::size_t>(edge.to)] = current.vertex;
          frontier.push(Candidate{candidate, edge.to});
        }
      }
    }
    return result;
  }

  std::pair<std::vector<int>, std::uint64_t> hop_shortest_path_and_weight(int start,
                                                                          int goal) const {
    validate(start);
    validate(goal);
    std::vector<int> parent(adjacency_.size(), -1);
    std::vector<bool> visited(adjacency_.size(), false);
    std::queue<int> frontier;
    frontier.push(start);
    visited[static_cast<std::size_t>(start)] = true;
    while (!frontier.empty()) {
      const int current = frontier.front();
      frontier.pop();
      if (current == goal) {
        break;
      }
      for (const auto& edge : adjacency_[static_cast<std::size_t>(current)]) {
        if (!visited[static_cast<std::size_t>(edge.to)]) {
          visited[static_cast<std::size_t>(edge.to)] = true;
          parent[static_cast<std::size_t>(edge.to)] = current;
          frontier.push(edge.to);
        }
      }
    }
    if (!visited[static_cast<std::size_t>(goal)]) {
      return {{}, 0};
    }
    std::vector<int> path;
    for (int current = goal; current != -1; current = parent[static_cast<std::size_t>(current)]) {
      path.push_back(current);
      if (current == start) {
        break;
      }
    }
    std::reverse(path.begin(), path.end());
    std::uint64_t cost = 0;
    for (std::size_t i = 1; i < path.size(); ++i) {
      bool found = false;
      for (const auto& edge : adjacency_[static_cast<std::size_t>(path[i - 1])]) {
        if (edge.to == path[i]) {
          cost += edge.weight;
          found = true;
          break;
        }
      }
      if (!found) {
        throw std::logic_error("reconstructed hop path contains no edge");
      }
    }
    return {path, cost};
  }

 private:
  void validate(int vertex) const {
    if (vertex < 0 || static_cast<std::size_t>(vertex) >= adjacency_.size()) {
      throw std::out_of_range("weighted graph vertex outside graph");
    }
  }

  std::vector<std::vector<WeightedEdge>> adjacency_;
};

struct TopologicalResult {
  std::vector<int> order;
  bool cycle_detected = false;
};

inline TopologicalResult topological_sort(std::size_t vertices,
                                          const std::vector<std::pair<int, int>>& edges) {
  std::vector<std::vector<int>> adjacency(vertices);
  std::vector<std::size_t> indegree(vertices, 0);
  for (const auto& [from, to] : edges) {
    if (from < 0 || to < 0 || static_cast<std::size_t>(from) >= vertices ||
        static_cast<std::size_t>(to) >= vertices) {
      throw std::out_of_range("topological edge outside graph");
    }
    adjacency[static_cast<std::size_t>(from)].push_back(to);
    ++indegree[static_cast<std::size_t>(to)];
  }
  std::queue<int> ready;
  for (std::size_t vertex = 0; vertex < vertices; ++vertex) {
    if (indegree[vertex] == 0) {
      ready.push(static_cast<int>(vertex));
    }
  }
  TopologicalResult result;
  while (!ready.empty()) {
    const int current = ready.front();
    ready.pop();
    result.order.push_back(current);
    for (const int next : adjacency[static_cast<std::size_t>(current)]) {
      if (--indegree[static_cast<std::size_t>(next)] == 0) {
        ready.push(next);
      }
    }
  }
  result.cycle_detected = result.order.size() != vertices;
  return result;
}

struct FibonacciObservation {
  std::uint64_t value = 0;
  std::uint64_t calls = 0;
};

inline FibonacciObservation fibonacci_naive(unsigned n) {
  std::uint64_t calls = 0;
  const auto recurse = [&](auto&& self, unsigned value) -> std::uint64_t {
    ++calls;
    return value < 2 ? value : self(self, value - 1) + self(self, value - 2);
  };
  return FibonacciObservation{recurse(recurse, n), calls};
}

inline FibonacciObservation fibonacci_memoized(unsigned n) {
  std::uint64_t calls = 0;
  std::vector<std::optional<std::uint64_t>> memo(static_cast<std::size_t>(n) + 1);
  const auto recurse = [&](auto&& self, unsigned value) -> std::uint64_t {
    ++calls;
    auto& cached = memo[static_cast<std::size_t>(value)];
    if (cached.has_value()) {
      return *cached;
    }
    const std::uint64_t result = value < 2 ? value : self(self, value - 1) + self(self, value - 2);
    cached = result;
    return result;
  };
  return FibonacciObservation{recurse(recurse, n), calls};
}

}  // namespace bts

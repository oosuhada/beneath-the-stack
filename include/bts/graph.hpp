#pragma once

#include <algorithm>
#include <cstddef>
#include <queue>
#include <stack>
#include <stdexcept>
#include <vector>

namespace bts {

struct TraversalResult {
  std::vector<int> order;
  std::vector<int> parent;
  std::size_t peak_frontier = 0;
};

class Graph {
 public:
  explicit Graph(std::size_t vertices) : adjacency_(vertices) {}

  void add_edge(int from, int to, bool undirected = true) {
    validate_vertex(from);
    validate_vertex(to);
    adjacency_[static_cast<std::size_t>(from)].push_back(to);
    if (undirected) {
      adjacency_[static_cast<std::size_t>(to)].push_back(from);
    }
  }

  std::size_t size() const { return adjacency_.size(); }

  TraversalResult bfs(int start) const {
    validate_vertex(start);
    TraversalResult result;
    result.parent.assign(adjacency_.size(), -1);
    std::vector<bool> visited(adjacency_.size(), false);
    std::queue<int> frontier;
    visited[static_cast<std::size_t>(start)] = true;
    frontier.push(start);
    result.peak_frontier = 1;

    while (!frontier.empty()) {
      const int current = frontier.front();
      frontier.pop();
      result.order.push_back(current);
      for (const int next : adjacency_[static_cast<std::size_t>(current)]) {
        if (!visited[static_cast<std::size_t>(next)]) {
          visited[static_cast<std::size_t>(next)] = true;
          result.parent[static_cast<std::size_t>(next)] = current;
          frontier.push(next);
          result.peak_frontier = std::max(result.peak_frontier, frontier.size());
        }
      }
    }
    return result;
  }

  TraversalResult dfs(int start) const {
    validate_vertex(start);
    TraversalResult result;
    result.parent.assign(adjacency_.size(), -1);
    std::vector<bool> visited(adjacency_.size(), false);
    std::stack<int> frontier;
    visited[static_cast<std::size_t>(start)] = true;
    frontier.push(start);
    result.peak_frontier = 1;

    while (!frontier.empty()) {
      const int current = frontier.top();
      frontier.pop();
      result.order.push_back(current);
      const auto& neighbors = adjacency_[static_cast<std::size_t>(current)];
      for (auto it = neighbors.rbegin(); it != neighbors.rend(); ++it) {
        if (!visited[static_cast<std::size_t>(*it)]) {
          visited[static_cast<std::size_t>(*it)] = true;
          result.parent[static_cast<std::size_t>(*it)] = current;
          frontier.push(*it);
          result.peak_frontier = std::max(result.peak_frontier, frontier.size());
        }
      }
    }
    return result;
  }

  static std::vector<int> reconstruct_path(int start, int goal, const std::vector<int>& parent) {
    if (start < 0 || goal < 0 || static_cast<std::size_t>(start) >= parent.size() ||
        static_cast<std::size_t>(goal) >= parent.size()) {
      throw std::out_of_range("path endpoint outside graph");
    }
    if (start == goal) {
      return {start};
    }
    if (parent[static_cast<std::size_t>(goal)] == -1) {
      return {};
    }
    std::vector<int> path;
    for (int current = goal; current != -1; current = parent[static_cast<std::size_t>(current)]) {
      path.push_back(current);
      if (current == start) {
        break;
      }
    }
    if (path.back() != start) {
      return {};
    }
    std::reverse(path.begin(), path.end());
    return path;
  }

 private:
  void validate_vertex(int vertex) const {
    if (vertex < 0 || static_cast<std::size_t>(vertex) >= adjacency_.size()) {
      throw std::out_of_range("vertex outside graph");
    }
  }

  std::vector<std::vector<int>> adjacency_;
};

}  // namespace bts

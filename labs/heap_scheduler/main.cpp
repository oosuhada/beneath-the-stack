#include <algorithm>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"
#include "bts/min_heap.hpp"

namespace {

struct Task {
  int id;
  int arrival;
  int deadline;
  int duration;
};

struct TaskEarlier {
  bool operator()(const Task& left, const Task& right) const {
    if (left.deadline != right.deadline) {
      return left.deadline < right.deadline;
    }
    return left.id < right.id;
  }
};

std::vector<Task> make_tasks(std::size_t count) {
  std::mt19937 generator(20260908);
  std::uniform_int_distribution<int> deadline(1, 1000000);
  std::uniform_int_distribution<int> duration(1, 30);
  std::vector<Task> tasks;
  tasks.reserve(count);
  for (std::size_t i = 0; i < count; ++i) {
    tasks.push_back(Task{static_cast<int>(i), 0, deadline(generator), duration(generator)});
  }
  return tasks;
}
std::vector<Task> scheduler_trace() {
  std::vector<Task> tasks = {
      {0, 0, 7, 2},  {1, 0, 4, 1},  {2, 1, 9, 2},  {3, 2, 5, 1},  {4, 3, 14, 3},   {5, 4, 8, 1},
      {6, 5, 12, 2}, {7, 6, 11, 1}, {8, 8, 18, 2}, {9, 9, 13, 1}, {10, 10, 20, 2}, {11, 11, 16, 1},
  };
  bts::BinaryMinHeap<Task, TaskEarlier> ready;
  std::vector<Task> executed;
  std::size_t next = 0;
  int now = 0;
  while (executed.size() < tasks.size()) {
    while (next < tasks.size() && tasks[next].arrival <= now) {
      ready.push(tasks[next++]);
    }
    if (ready.empty()) {
      now = tasks[next].arrival;
      continue;
    }
    Task task = ready.pop();
    executed.push_back(task);
    now += task.duration;
  }
  return executed;
}
}  // namespace

int main(int argc, char** argv) {
  const std::size_t size = bts::size_argument(argc, argv, "--size", 2500);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 10);
  const auto tasks = make_tasks(size);
  std::atomic<std::uint64_t> sink{0};

  const auto heap_stats = bts::benchmark("binary-heap-schedule", warmup, repetitions, [&] {
    bts::BinaryMinHeap<Task, TaskEarlier> heap;
    for (const auto& task : tasks) {
      heap.push(task);
    }
    std::uint64_t checksum = 0;
    while (!heap.empty()) {
      checksum += static_cast<std::uint64_t>(heap.pop().deadline);
    }
    sink.store(checksum, std::memory_order_relaxed);
  });

  const auto scan_stats = bts::benchmark("linear-min-schedule", warmup, repetitions, [&] {
    auto pending = tasks;
    std::uint64_t checksum = 0;
    while (!pending.empty()) {
      const auto it = std::min_element(pending.begin(), pending.end(), TaskEarlier{});
      checksum += static_cast<std::uint64_t>(it->deadline);
      *it = pending.back();
      pending.pop_back();
    }
    sink.store(checksum, std::memory_order_relaxed);
  });

  const auto trace = scheduler_trace();
  std::cout << "{\"lab\":\"heap-scheduler\",\"tasks\":" << size << ",\"heap\":";
  bts::write_stats_json(std::cout, heap_stats);
  std::cout << ",\"linear_min\":";
  bts::write_stats_json(std::cout, scan_stats);
  std::cout << ",\"scheduler_trace\":[";
  for (std::size_t i = 0; i < trace.size(); ++i) {
    if (i != 0) {
      std::cout << ',';
    }
    const auto& task = trace[i];
    std::cout << "{\"id\":" << task.id << ",\"arrival\":" << task.arrival
              << ",\"deadline\":" << task.deadline << ",\"duration\":" << task.duration << '}';
  }
  std::cout << "]}\n";
  return sink.load(std::memory_order_relaxed) == 0 ? 1 : 0;
}


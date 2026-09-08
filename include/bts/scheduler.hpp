#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <limits>
#include <numeric>
#include <string>
#include <vector>

namespace bts {

struct SchedulerJob {
  int id = 0;
  std::uint64_t arrival = 0;
  std::uint64_t service = 0;
  int priority = 0;
};

struct SchedulerJobResult {
  int id = 0;
  std::uint64_t arrival = 0;
  std::uint64_t service = 0;
  int priority = 0;
  std::uint64_t first_run = 0;
  std::uint64_t completion = 0;
  std::uint64_t waiting = 0;
  std::uint64_t turnaround = 0;
};

struct SchedulerSummary {
  std::string policy;
  std::uint64_t total_time = 0;
  double mean_waiting = 0.0;
  double mean_turnaround = 0.0;
  std::uint64_t max_waiting = 0;
  double p95_waiting = 0.0;
  std::uint64_t starvation_threshold = 0;
  std::size_t starvation_count = 0;
  std::vector<SchedulerJobResult> jobs;
};

namespace detail {

struct MutableJob {
  SchedulerJob original;
  std::uint64_t remaining = 0;
  bool started = false;
  std::uint64_t first_run = 0;
  std::uint64_t completion = 0;
};

inline SchedulerSummary summarize_schedule(std::string policy, std::vector<MutableJob> jobs,
                                           std::uint64_t total_time,
                                           std::uint64_t starvation_threshold) {
  SchedulerSummary summary;
  summary.policy = std::move(policy);
  summary.total_time = total_time;
  summary.starvation_threshold = starvation_threshold;
  summary.jobs.reserve(jobs.size());
  std::vector<std::uint64_t> waits;
  waits.reserve(jobs.size());
  for (const auto& job : jobs) {
    SchedulerJobResult result;
    result.id = job.original.id;
    result.arrival = job.original.arrival;
    result.service = job.original.service;
    result.priority = job.original.priority;
    result.first_run = job.first_run;
    result.completion = job.completion;
    result.turnaround = result.completion - result.arrival;
    result.waiting = result.turnaround - result.service;
    waits.push_back(result.waiting);
    summary.max_waiting = std::max(summary.max_waiting, result.waiting);
    if (result.waiting >= starvation_threshold) {
      ++summary.starvation_count;
    }
    summary.mean_waiting += static_cast<double>(result.waiting);
    summary.mean_turnaround += static_cast<double>(result.turnaround);
    summary.jobs.push_back(result);
  }
  if (!jobs.empty()) {
    summary.mean_waiting /= static_cast<double>(jobs.size());
    summary.mean_turnaround /= static_cast<double>(jobs.size());
    std::sort(waits.begin(), waits.end());
    const std::size_t index = static_cast<std::size_t>(
        std::min<double>(static_cast<double>(waits.size() - 1), waits.size() * 0.95));
    summary.p95_waiting = static_cast<double>(waits[index]);
  }
  std::sort(summary.jobs.begin(), summary.jobs.end(),
            [](const auto& left, const auto& right) { return left.id < right.id; });
  return summary;
}

inline std::vector<MutableJob> prepare_jobs(const std::vector<SchedulerJob>& jobs) {
  std::vector<MutableJob> prepared;
  prepared.reserve(jobs.size());
  for (const auto& job : jobs) {
    prepared.push_back(MutableJob{job, job.service, false, 0, 0});
  }
  return prepared;
}

template <typename Predicate>
inline bool all_finished(const std::vector<MutableJob>& jobs, Predicate predicate) {
  return std::all_of(jobs.begin(), jobs.end(), predicate);
}

inline void mark_started(MutableJob& job, std::uint64_t now) {
  if (!job.started) {
    job.started = true;
    job.first_run = now;
  }
}

}  // namespace detail

inline SchedulerSummary simulate_fifo(const std::vector<SchedulerJob>& jobs,
                                      std::uint64_t starvation_threshold = 50) {
  auto state = detail::prepare_jobs(jobs);
  std::vector<std::size_t> order(state.size());
  std::iota(order.begin(), order.end(), 0);
  std::stable_sort(order.begin(), order.end(), [&](std::size_t left, std::size_t right) {
    return state[left].original.arrival < state[right].original.arrival;
  });
  std::uint64_t now = 0;
  for (const std::size_t index : order) {
    auto& job = state[index];
    now = std::max(now, job.original.arrival);
    detail::mark_started(job, now);
    now += job.remaining;
    job.remaining = 0;
    job.completion = now;
  }
  return detail::summarize_schedule("fifo", state, now, starvation_threshold);
}

inline SchedulerSummary simulate_shortest_job_first(const std::vector<SchedulerJob>& jobs,
                                                    std::uint64_t starvation_threshold = 50) {
  auto state = detail::prepare_jobs(jobs);
  std::uint64_t now = 0;
  std::size_t completed = 0;
  while (completed < state.size()) {
    std::size_t best = state.size();
    for (std::size_t i = 0; i < state.size(); ++i) {
      const auto& job = state[i];
      if (job.remaining == 0 || job.original.arrival > now) {
        continue;
      }
      if (best == state.size() || job.original.service < state[best].original.service ||
          (job.original.service == state[best].original.service &&
           job.original.arrival < state[best].original.arrival)) {
        best = i;
      }
    }
    if (best == state.size()) {
      std::uint64_t next_arrival = std::numeric_limits<std::uint64_t>::max();
      for (const auto& job : state) {
        if (job.remaining != 0) {
          next_arrival = std::min(next_arrival, job.original.arrival);
        }
      }
      now = std::max(now, next_arrival);
      continue;
    }
    auto& job = state[best];
    detail::mark_started(job, now);
    now += job.remaining;
    job.remaining = 0;
    job.completion = now;
    ++completed;
  }
  return detail::summarize_schedule("shortest-job-first", state, now, starvation_threshold);
}

inline SchedulerSummary simulate_priority_non_preemptive(const std::vector<SchedulerJob>& jobs,
                                                         std::uint64_t starvation_threshold = 50) {
  auto state = detail::prepare_jobs(jobs);
  std::uint64_t now = 0;
  std::size_t completed = 0;
  while (completed < state.size()) {
    std::size_t best = state.size();
    for (std::size_t i = 0; i < state.size(); ++i) {
      const auto& job = state[i];
      if (job.remaining == 0 || job.original.arrival > now) {
        continue;
      }
      if (best == state.size() || job.original.priority < state[best].original.priority ||
          (job.original.priority == state[best].original.priority &&
           job.original.arrival < state[best].original.arrival)) {
        best = i;
      }
    }
    if (best == state.size()) {
      std::uint64_t next_arrival = std::numeric_limits<std::uint64_t>::max();
      for (const auto& job : state) {
        if (job.remaining != 0) {
          next_arrival = std::min(next_arrival, job.original.arrival);
        }
      }
      now = std::max(now, next_arrival);
      continue;
    }
    auto& job = state[best];
    detail::mark_started(job, now);
    now += job.remaining;
    job.remaining = 0;
    job.completion = now;
    ++completed;
  }
  return detail::summarize_schedule("priority-non-preemptive", state, now, starvation_threshold);
}

inline SchedulerSummary simulate_round_robin(const std::vector<SchedulerJob>& jobs,
                                             std::uint64_t quantum,
                                             std::uint64_t starvation_threshold = 50) {
  auto state = detail::prepare_jobs(jobs);
  std::uint64_t now = 0;
  std::size_t completed = 0;
  std::vector<std::size_t> ready;
  std::vector<bool> queued(state.size(), false);
  auto enqueue_arrived = [&] {
    for (std::size_t i = 0; i < state.size(); ++i) {
      if (!queued[i] && state[i].remaining != 0 && state[i].original.arrival <= now) {
        ready.push_back(i);
        queued[i] = true;
      }
    }
  };

  while (completed < state.size()) {
    enqueue_arrived();
    if (ready.empty()) {
      std::uint64_t next_arrival = std::numeric_limits<std::uint64_t>::max();
      for (const auto& job : state) {
        if (job.remaining != 0) {
          next_arrival = std::min(next_arrival, job.original.arrival);
        }
      }
      now = std::max(now, next_arrival);
      enqueue_arrived();
    }
    const std::size_t index = ready.front();
    ready.erase(ready.begin());
    queued[index] = true;
    auto& job = state[index];
    detail::mark_started(job, now);
    const std::uint64_t slice = std::min(quantum, job.remaining);
    now += slice;
    job.remaining -= slice;
    enqueue_arrived();
    queued[index] = false;
    if (job.remaining == 0) {
      job.completion = now;
      ++completed;
    } else {
      ready.push_back(index);
      queued[index] = true;
    }
  }
  auto summary = detail::summarize_schedule("round-robin", state, now, starvation_threshold);
  return summary;
}

}  // namespace bts

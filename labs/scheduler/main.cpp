#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"
#include "bts/scheduler.hpp"

namespace {

std::vector<bts::SchedulerJob> convoy_workload() {
  std::vector<bts::SchedulerJob> jobs;
  jobs.push_back({0, 0, 40, 5});
  jobs.push_back({13, 0, 18, 0});
  jobs.push_back({14, 0, 1, 0});
  for (int id = 1; id <= 12; ++id) {
    jobs.push_back({id, static_cast<std::uint64_t>(id), 2, 1});
  }
  return jobs;
}

void write_summary(const bts::SchedulerSummary& summary) {
  std::cout << "{\"policy\":\"" << summary.policy << "\",\"total_time\":" << summary.total_time
            << ",\"mean_waiting\":" << summary.mean_waiting
            << ",\"mean_turnaround\":" << summary.mean_turnaround
            << ",\"max_waiting\":" << summary.max_waiting
            << ",\"p95_waiting\":" << summary.p95_waiting
            << ",\"starvation_threshold\":" << summary.starvation_threshold
            << ",\"starvation_count\":" << summary.starvation_count << ",\"jobs\":[";
  for (std::size_t i = 0; i < summary.jobs.size(); ++i) {
    const auto& job = summary.jobs[i];
    if (i != 0) {
      std::cout << ',';
    }
    std::cout << "{\"id\":" << job.id << ",\"arrival\":" << job.arrival
              << ",\"service\":" << job.service << ",\"priority\":" << job.priority
              << ",\"first_run\":" << job.first_run << ",\"completion\":" << job.completion
              << ",\"waiting\":" << job.waiting << ",\"turnaround\":" << job.turnaround << '}';
  }
  std::cout << "]}";
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 8);
  const std::uint64_t quantum = bts::size_argument(argc, argv, "--quantum", 5);
  const std::vector<bts::SchedulerJob> jobs = convoy_workload();
  const auto fifo = bts::simulate_fifo(jobs);
  const auto round_robin = bts::simulate_round_robin(jobs, quantum);
  const auto priority = bts::simulate_priority_non_preemptive(jobs);
  const auto sjf = bts::simulate_shortest_job_first(jobs);
  std::atomic<std::uint64_t> sink{0};

  const auto simulation_time =
      bts::benchmark("scheduler-policy-simulation", warmup, repetitions, [&] {
        const auto observed = bts::simulate_round_robin(jobs, quantum);
        sink.store(observed.total_time + observed.max_waiting, std::memory_order_relaxed);
      });

  std::cout << "{\"lab\":\"scheduler-internals\",\"model\":\"deterministic toy run queue, not the "
               "macOS scheduler\",\"workload\":\"one long job, many short interactive jobs, two "
               "high-priority jobs\",\"job_count\":"
            << jobs.size() << ",\"round_robin_quantum\":" << quantum << ",\"summaries\":{\"fifo\":";
  write_summary(fifo);
  std::cout << ",\"round_robin\":";
  write_summary(round_robin);
  std::cout << ",\"priority\":";
  write_summary(priority);
  std::cout << ",\"shortest_job_first\":";
  write_summary(sjf);
  std::cout << "},\"benchmark\":";
  bts::write_stats_json(std::cout, simulation_time);
  std::cout << "}\n";

  return fifo.max_waiting > round_robin.max_waiting && priority.jobs[0].waiting > 0 &&
                 sjf.mean_turnaround <= fifo.mean_turnaround
             ? 0
             : 1;
}

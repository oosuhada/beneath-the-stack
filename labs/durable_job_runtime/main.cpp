#include <algorithm>
#include <chrono>
#include <csignal>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <numeric>
#include <optional>
#include <string>
#include <thread>
#include <utility>
#include <vector>

#ifndef _WIN32
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>
#endif

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/durable_job_runtime.hpp"
#include "bts/firmware.hpp"

namespace {

std::string escape_json(const std::string& value) {
  std::string out;
  for (const char c : value) {
    if (c == '\\' || c == '"') {
      out.push_back('\\');
    }
    if (c == '\n') {
      out += "\\n";
    } else {
      out.push_back(c);
    }
  }
  return out;
}

std::string temp_path(const std::string& suffix) {
  const auto base = std::filesystem::temp_directory_path();
  const auto stamp = std::chrono::steady_clock::now().time_since_epoch().count();
  return (base / ("bts-capstone-" + std::to_string(stamp) + suffix)).string();
}

void remove_if_exists(const std::string& path) {
  std::error_code ignored;
  std::filesystem::remove(path, ignored);
}

int int_option(int argc, char** argv, const std::string& flag, int fallback) {
  return static_cast<int>(bts::size_argument(argc, argv, flag, static_cast<std::size_t>(fallback)));
}

void print_benchmark(const bts::BenchmarkStats& stats) {
  std::cout << "{\"name\":\"" << escape_json(stats.name) << "\",\"warmup\":" << stats.warmup
            << ",\"repetitions\":" << stats.repetitions << ",\"mean_ms\":" << stats.mean_ms
            << ",\"stddev_ms\":" << stats.stddev_ms << ",\"p50_ms\":" << stats.p50_ms
            << ",\"p95_ms\":" << stats.p95_ms << ",\"min_ms\":" << stats.min_ms
            << ",\"max_ms\":" << stats.max_ms << "}";
}

void append_corrupt_tail(const std::string& path) {
  std::ofstream out(path, std::ios::app | std::ios::binary);
  out << "btsjr1|999|SUCCEEDED|999|corrupt|1|1|1|SUCCEEDED|0|abcd|123\n";
}

void append_truncated_tail(const std::string& path) {
  std::ofstream out(path, std::ios::app | std::ios::binary);
  out << "btsjr1|1000|RUNNING|";
}

struct FailureCampaignResult {
  bool duplicate_idempotent = false;
  bool running_recovered = false;
  bool network_drop_reset = false;
  bool corrupt_tail_ignored = false;
  bool truncated_tail_ignored = false;
  bool queue_full_rejected = false;
  bool retry_succeeded = false;
  std::size_t accepted = 0;
  std::size_t duplicates = 0;
  std::size_t rejected = 0;
  std::size_t invalid_records = 0;
  std::size_t recovered_running = 0;
  bts::RuntimeSnapshot final_snapshot;
};

FailureCampaignResult run_failure_campaign() {
  const std::string journal = temp_path(".journal");
  remove_if_exists(journal);
  bts::RuntimeConfig config{};
  config.queue_capacity = 2;
  config.retry_delay_ms = 10;

  FailureCampaignResult result{};
  {
    bts::ProtocolParser parser(96);
    const auto command = bts::encode_submit_command({"drop", 1, 1, "half-frame"});
    const auto bytes = bts::encode_frame(
        bts::SerialFrame{0x31U, std::vector<std::uint8_t>(command.begin(), command.end())});
    for (std::size_t index = 0; index < bytes.size() / 2U; ++index) {
      bts::SerialFrame ignored;
      (void)parser.feed(bytes[index], ignored);
    }
    parser.timeout();
    const auto stats = parser.stats();
    result.network_drop_reset = stats.timeout_resets == 1 && stats.frames == 0;
  }
  {
    bts::DurableJobRuntime runtime(journal, config);
    const auto first = runtime.accept({"req-a", 5, 2, "fail-once"}, 0);
    const auto duplicate = runtime.accept({"req-a", 5, 2, "fail-once"}, 0);
    const auto second = runtime.accept({"req-b", 1, 1, "ok"}, 0);
    const auto rejected = runtime.accept({"req-c", 1, 1, "queue-full"}, 0);
    result.duplicate_idempotent =
        first.accepted && duplicate.duplicate && first.job_id == duplicate.job_id;
    result.queue_full_rejected = second.accepted && rejected.rejected;
    (void)runtime.claim_next(0, "worker-1");
  }

  auto recovered = bts::DurableJobRuntime::recover(journal, config);
  const auto counters_after_recovery = recovered.counters();
  result.recovered_running = counters_after_recovery.recovered_running;
  result.running_recovered = counters_after_recovery.recovered_running == 1;
  result.retry_succeeded = recovered.process_one(100, "worker-2", false);
  recovered.process_one(100, "worker-2", false);
  result.final_snapshot = recovered.snapshot();

  append_corrupt_tail(journal);
  auto corrupt_recovered = bts::DurableJobRuntime::recover(journal, config);
  result.corrupt_tail_ignored =
      corrupt_recovered.counters().invalid_journal_records == 1 &&
      corrupt_recovered.snapshot().succeeded == result.final_snapshot.succeeded;
  result.invalid_records += corrupt_recovered.counters().invalid_journal_records;

  append_truncated_tail(journal);
  auto truncated_recovered = bts::DurableJobRuntime::recover(journal, config);
  result.truncated_tail_ignored =
      truncated_recovered.counters().invalid_journal_records == 1 &&
      truncated_recovered.snapshot().succeeded == result.final_snapshot.succeeded;
  result.invalid_records += truncated_recovered.counters().invalid_journal_records;

  const auto final_counters = recovered.counters();
  result.accepted = final_counters.journal_records_replayed;
  result.duplicates = final_counters.duplicate_requests;
  result.rejected = final_counters.rejected_full;
  remove_if_exists(journal);
  return result;
}

struct SchedulerComparison {
  std::uint64_t arrival_order_first_job = 0;
  std::uint64_t priority_runtime_first_job = 0;
};

SchedulerComparison compare_scheduler_choice() {
  const std::string journal = temp_path("-priority.journal");
  remove_if_exists(journal);
  bts::DurableJobRuntime runtime(journal, {.queue_capacity = 8, .retry_delay_ms = 10});
  const auto low = runtime.accept({"low", 1, 1, "slow"}, 0);
  runtime.accept({"high", 9, 1, "fast"}, 0);
  auto claimed = runtime.claim_next(0, "priority-worker");
  SchedulerComparison result{};
  result.arrival_order_first_job = low.job_id;
  result.priority_runtime_first_job = claimed ? claimed->id : 0;
  if (claimed) {
    runtime.finish(claimed->id, true, 0);
  }
  remove_if_exists(journal);
  return result;
}

struct NetworkCampaignResult {
  std::size_t clients = 0;
  std::size_t accepted = 0;
  std::size_t frames = 0;
  std::size_t bytes_received = 0;
  std::size_t partial_reads = 0;
  double elapsed_ms = 0.0;
  double throughput_jobs_per_sec = 0.0;
};

#ifndef _WIN32
class Fd {
 public:
  explicit Fd(int fd = -1) : fd_(fd) {}
  Fd(const Fd&) = delete;
  Fd& operator=(const Fd&) = delete;
  Fd(Fd&& other) noexcept : fd_(std::exchange(other.fd_, -1)) {}
  Fd& operator=(Fd&& other) noexcept {
    if (this != &other) {
      reset();
      fd_ = std::exchange(other.fd_, -1);
    }
    return *this;
  }
  ~Fd() { reset(); }
  [[nodiscard]] int get() const { return fd_; }
  void reset(int next = -1) {
    if (fd_ >= 0) {
      close(fd_);
    }
    fd_ = next;
  }

 private:
  int fd_;
};

std::uint16_t port_of(int server_fd) {
  sockaddr_in address{};
  socklen_t length = sizeof(address);
  if (getsockname(server_fd, reinterpret_cast<sockaddr*>(&address), &length) != 0) {
    throw std::runtime_error("getsockname failed");
  }
  return ntohs(address.sin_port);
}

void send_all(int fd, const std::vector<std::uint8_t>& bytes, std::size_t begin, std::size_t end) {
  std::size_t cursor = begin;
  while (cursor < end) {
    const auto remaining = end - cursor;
    const ssize_t written = send(fd, bytes.data() + cursor, remaining, 0);
    if (written <= 0) {
      throw std::runtime_error("send failed");
    }
    cursor += static_cast<std::size_t>(written);
  }
}

NetworkCampaignResult run_network_campaign(std::size_t clients) {
  const std::string journal = temp_path("-network.journal");
  remove_if_exists(journal);
  bts::DurableJobRuntime runtime(journal, {.queue_capacity = clients + 4, .retry_delay_ms = 10});
  NetworkCampaignResult result{};
  result.clients = clients;

  Fd server(socket(AF_INET, SOCK_STREAM, 0));
  if (server.get() < 0) {
    throw std::runtime_error("socket failed");
  }
  const int yes = 1;
  setsockopt(server.get(), SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes));
  sockaddr_in address{};
  address.sin_family = AF_INET;
  address.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  address.sin_port = 0;
  if (bind(server.get(), reinterpret_cast<sockaddr*>(&address), sizeof(address)) != 0) {
    throw std::runtime_error("bind failed");
  }
  if (listen(server.get(), 64) != 0) {
    throw std::runtime_error("listen failed");
  }
  const std::uint16_t port = port_of(server.get());
  const auto started = std::chrono::steady_clock::now();

  std::thread acceptor([&] {
    for (std::size_t index = 0; index < clients; ++index) {
      Fd client(accept(server.get(), nullptr, nullptr));
      if (client.get() < 0) {
        continue;
      }
      bts::RingBuffer<512> ring;
      bts::ProtocolParser parser(96);
      std::array<std::uint8_t, 7> chunk{};
      while (true) {
        const ssize_t got = recv(client.get(), chunk.data(), chunk.size(), 0);
        if (got == 0) {
          break;
        }
        if (got < 0) {
          break;
        }
        result.bytes_received += static_cast<std::size_t>(got);
        if (static_cast<std::size_t>(got) < chunk.size()) {
          ++result.partial_reads;
        }
        for (ssize_t offset = 0; offset < got; ++offset) {
          (void)ring.push(chunk[static_cast<std::size_t>(offset)]);
        }
        while (!ring.empty()) {
          auto byte = ring.pop();
          if (!byte) {
            break;
          }
          bts::SerialFrame frame;
          if (parser.feed(*byte, frame) && frame.type == 0x31U) {
            const std::string payload(frame.payload.begin(), frame.payload.end());
            auto command = bts::parse_submit_command(payload);
            if (command) {
              const auto accepted = runtime.accept(*command, 0);
              if (accepted.accepted) {
                ++result.accepted;
              }
            }
            ++result.frames;
          }
        }
      }
    }
  });

  for (std::size_t index = 0; index < clients; ++index) {
    Fd fd(socket(AF_INET, SOCK_STREAM, 0));
    if (fd.get() < 0) {
      throw std::runtime_error("client socket failed");
    }
    sockaddr_in destination{};
    destination.sin_family = AF_INET;
    destination.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    destination.sin_port = htons(port);
    if (connect(fd.get(), reinterpret_cast<sockaddr*>(&destination), sizeof(destination)) != 0) {
      throw std::runtime_error("connect failed");
    }
    const auto command = bts::encode_submit_command(
        {"net-" + std::to_string(index), static_cast<int>(index % 5U), 1, "payload"});
    bts::SerialFrame frame{0x31U, std::vector<std::uint8_t>(command.begin(), command.end())};
    const auto bytes = bts::encode_frame(frame);
    const std::size_t split = std::min<std::size_t>(3, bytes.size());
    send_all(fd.get(), bytes, 0, split);
    std::this_thread::sleep_for(std::chrono::milliseconds(1));
    send_all(fd.get(), bytes, split, bytes.size());
  }
  acceptor.join();

  const auto elapsed =
      std::chrono::duration<double, std::milli>(std::chrono::steady_clock::now() - started);
  result.elapsed_ms = elapsed.count();
  result.throughput_jobs_per_sec =
      result.elapsed_ms > 0.0 ? static_cast<double>(result.accepted) / (result.elapsed_ms / 1000.0)
                              : 0.0;
  remove_if_exists(journal);
  return result;
}
#else
NetworkCampaignResult run_network_campaign(std::size_t clients) {
  return NetworkCampaignResult{clients, 0, 0, 0, 0, 0.0, 0.0};
}
#endif

std::vector<NetworkCampaignResult> run_performance_campaign(
    const std::vector<std::size_t>& clients) {
  std::vector<NetworkCampaignResult> results;
  results.reserve(clients.size());
  for (const auto count : clients) {
    results.push_back(run_network_campaign(count));
  }
  return results;
}

void print_snapshot(const bts::RuntimeSnapshot& snapshot) {
  std::cout << "{\"total_jobs\":" << snapshot.total_jobs << ",\"pending\":" << snapshot.pending
            << ",\"running\":" << snapshot.running << ",\"retry_wait\":" << snapshot.retry_wait
            << ",\"succeeded\":" << snapshot.succeeded << ",\"failed\":" << snapshot.failed
            << ",\"ready_queue_size\":" << snapshot.ready_queue_size
            << ",\"queue_high_watermark\":" << snapshot.queue_high_watermark << "}";
}

void print_network(const NetworkCampaignResult& result) {
  std::cout << "{\"clients\":" << result.clients << ",\"accepted\":" << result.accepted
            << ",\"frames\":" << result.frames << ",\"bytes_received\":" << result.bytes_received
            << ",\"partial_reads\":" << result.partial_reads
            << ",\"elapsed_ms\":" << result.elapsed_ms
            << ",\"throughput_jobs_per_sec\":" << result.throughput_jobs_per_sec << "}";
}

}  // namespace

int main(int argc, char** argv) {
#ifndef _WIN32
  std::signal(SIGPIPE, SIG_IGN);
#endif
  const int warmup = int_option(argc, argv, "--warmup", 0);
  const int repetitions = int_option(argc, argv, "--repetitions", 1);
  const int clients = int_option(argc, argv, "--clients", 10);
  const int max_clients = int_option(argc, argv, "--max-clients", 100);

  volatile std::uint64_t sink = 0;
  const auto parse_bench = bts::benchmark("capstone-protocol-parse", warmup, repetitions, [&] {
    const auto command = bts::encode_submit_command({"bench", 3, 1, "payload"});
    const auto bytes = bts::encode_frame(
        bts::SerialFrame{0x31U, std::vector<std::uint8_t>(command.begin(), command.end())});
    bts::ProtocolParser parser(96);
    for (int i = 0; i < 2000; ++i) {
      for (const auto byte : bytes) {
        bts::SerialFrame out;
        if (parser.feed(byte, out)) {
          sink += out.payload.size();
        }
      }
    }
  });
  const auto recovery_bench =
      bts::benchmark("capstone-recovery-campaign", warmup, repetitions, [&] {
        auto result = run_failure_campaign();
        sink += result.final_snapshot.succeeded + result.invalid_records;
      });
  const auto network_bench = bts::benchmark("capstone-loopback-tcp", warmup, repetitions, [&] {
    auto result = run_network_campaign(static_cast<std::size_t>(std::max(1, clients)));
    sink += result.accepted + result.frames;
  });

  const auto failures = run_failure_campaign();
  const auto scheduler = compare_scheduler_choice();
  const auto performance =
      run_performance_campaign({1U, static_cast<std::size_t>(std::max(1, clients)),
                                static_cast<std::size_t>(std::max(1, max_clients))});

  std::cout
      << "{\"lab\":\"durable-job-runtime\","
      << "\"architecture\":[\"TCP client\",\"binary frame\",\"parser\",\"bounded queue\","
         "\"priority worker scheduler\",\"append-only journal\",\"idempotency index\","
         "\"recovery\",\"query snapshot\"],"
      << "\"custom_data_structures\":[\"RingBuffer\",\"BinaryMinHeap\",\"LinearProbeHashTable\"],"
      << "\"invariants\":["
      << "\"duplicate request IDs map to one logical job\","
      << "\"invalid journal records do not mutate state\","
      << "\"running jobs are moved to retry wait on recovery\","
      << "\"completed jobs are not returned to pending\","
      << "\"bounded queue rejects excess accepted work\"],";
  std::cout << "\"failure_campaign\":{"
            << "\"duplicate_idempotent\":" << (failures.duplicate_idempotent ? "true" : "false")
            << ",\"running_recovered\":" << (failures.running_recovered ? "true" : "false")
            << ",\"network_drop_reset\":" << (failures.network_drop_reset ? "true" : "false")
            << ",\"corrupt_tail_ignored\":" << (failures.corrupt_tail_ignored ? "true" : "false")
            << ",\"truncated_tail_ignored\":"
            << (failures.truncated_tail_ignored ? "true" : "false")
            << ",\"queue_full_rejected\":" << (failures.queue_full_rejected ? "true" : "false")
            << ",\"retry_succeeded\":" << (failures.retry_succeeded ? "true" : "false")
            << ",\"invalid_records_seen\":" << failures.invalid_records << ",\"snapshot\":";
  print_snapshot(failures.final_snapshot);
  std::cout << "},\"scheduler_choice\":{\"arrival_order_first_job\":"
            << scheduler.arrival_order_first_job
            << ",\"priority_runtime_first_job\":" << scheduler.priority_runtime_first_job
            << "},\"performance_campaign\":[";
  for (std::size_t index = 0; index < performance.size(); ++index) {
    if (index != 0) {
      std::cout << ',';
    }
    print_network(performance[index]);
  }
  std::cout << "],\"benchmarks\":{\"parser\":";
  print_benchmark(parse_bench);
  std::cout << ",\"recovery\":";
  print_benchmark(recovery_bench);
  std::cout << ",\"network\":";
  print_benchmark(network_bench);
  std::cout << "},\"sink\":" << sink << "}\n";
  return 0;
}

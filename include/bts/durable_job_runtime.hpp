#pragma once

#include <algorithm>
#include <cctype>
#include <cstdint>
#include <deque>
#include <fstream>
#include <map>
#include <mutex>
#include <optional>
#include <sstream>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

#include "bts/hash_table.hpp"
#include "bts/min_heap.hpp"

namespace bts {

enum class JobState { kPending, kRunning, kSucceeded, kFailed, kRetryWait };

inline const char* job_state_name(JobState state) {
  switch (state) {
    case JobState::kPending:
      return "PENDING";
    case JobState::kRunning:
      return "RUNNING";
    case JobState::kSucceeded:
      return "SUCCEEDED";
    case JobState::kFailed:
      return "FAILED";
    case JobState::kRetryWait:
      return "RETRY_WAIT";
  }
  return "UNKNOWN";
}

inline std::optional<JobState> parse_job_state(const std::string& value) {
  if (value == "PENDING") {
    return JobState::kPending;
  }
  if (value == "RUNNING") {
    return JobState::kRunning;
  }
  if (value == "SUCCEEDED") {
    return JobState::kSucceeded;
  }
  if (value == "FAILED") {
    return JobState::kFailed;
  }
  if (value == "RETRY_WAIT") {
    return JobState::kRetryWait;
  }
  return std::nullopt;
}

struct SubmitJobCommand {
  std::string request_id;
  int priority = 0;
  int max_attempts = 1;
  std::string payload;
};

struct JobRecord {
  std::uint64_t id = 0;
  std::string request_id;
  int priority = 0;
  int max_attempts = 1;
  int attempts = 0;
  JobState state = JobState::kPending;
  std::string payload;
  std::string owner;
  std::uint64_t next_run_ms = 0;
};

struct JobAcceptResult {
  bool accepted = false;
  bool duplicate = false;
  bool rejected = false;
  std::uint64_t job_id = 0;
  std::string reason;
};

struct RuntimeConfig {
  std::size_t queue_capacity = 64;
  std::uint64_t retry_delay_ms = 50;
  bool fsync_each_record = false;
};

struct RuntimeCounters {
  std::size_t accepted = 0;
  std::size_t duplicate_requests = 0;
  std::size_t rejected_full = 0;
  std::size_t completed = 0;
  std::size_t failed = 0;
  std::size_t recovered_running = 0;
  std::size_t invalid_journal_records = 0;
  std::size_t journal_records_replayed = 0;
  std::size_t queue_high_watermark = 0;
};

struct RuntimeSnapshot {
  std::size_t total_jobs = 0;
  std::size_t pending = 0;
  std::size_t running = 0;
  std::size_t retry_wait = 0;
  std::size_t succeeded = 0;
  std::size_t failed = 0;
  std::size_t ready_queue_size = 0;
  std::size_t queue_high_watermark = 0;
};

struct ReadyJob {
  std::uint64_t next_run_ms = 0;
  int priority = 0;
  std::uint64_t sequence = 0;
  std::uint64_t job_id = 0;
};

struct ReadyJobEarlier {
  bool operator()(const ReadyJob& left, const ReadyJob& right) const {
    if (left.next_run_ms != right.next_run_ms) {
      return left.next_run_ms < right.next_run_ms;
    }
    if (left.priority != right.priority) {
      return left.priority > right.priority;
    }
    return left.sequence < right.sequence;
  }
};

inline std::uint32_t capstone_checksum(const std::string& text) {
  std::uint32_t hash = 2166136261U;
  for (const unsigned char byte : text) {
    hash ^= byte;
    hash *= 16777619U;
  }
  return hash;
}

inline std::string to_hex(const std::string& value) {
  constexpr char kDigits[] = "0123456789abcdef";
  std::string out;
  out.reserve(value.size() * 2);
  for (const unsigned char byte : value) {
    out.push_back(kDigits[byte >> 4U]);
    out.push_back(kDigits[byte & 0x0FU]);
  }
  return out;
}

inline int hex_value(char value) {
  if (value >= '0' && value <= '9') {
    return value - '0';
  }
  if (value >= 'a' && value <= 'f') {
    return 10 + value - 'a';
  }
  if (value >= 'A' && value <= 'F') {
    return 10 + value - 'A';
  }
  return -1;
}

inline std::optional<std::string> from_hex(const std::string& value) {
  if ((value.size() % 2U) != 0U) {
    return std::nullopt;
  }
  std::string out;
  out.reserve(value.size() / 2U);
  for (std::size_t index = 0; index < value.size(); index += 2U) {
    const int high = hex_value(value[index]);
    const int low = hex_value(value[index + 1U]);
    if (high < 0 || low < 0) {
      return std::nullopt;
    }
    out.push_back(static_cast<char>((high << 4U) | low));
  }
  return out;
}

inline std::vector<std::string> split_pipe(const std::string& value) {
  std::vector<std::string> parts;
  std::string current;
  std::istringstream stream(value);
  while (std::getline(stream, current, '|')) {
    parts.push_back(current);
  }
  if (!value.empty() && value.back() == '|') {
    parts.emplace_back();
  }
  return parts;
}

inline bool all_digits(const std::string& value) {
  return !value.empty() && std::all_of(value.begin(), value.end(),
                                       [](unsigned char byte) { return std::isdigit(byte) != 0; });
}

inline std::optional<SubmitJobCommand> parse_submit_command(const std::string& payload) {
  const auto parts = split_pipe(payload);
  if (parts.size() != 4 || parts[0].empty() || !all_digits(parts[1]) || !all_digits(parts[2]) ||
      parts[3].empty()) {
    return std::nullopt;
  }
  const int priority = std::stoi(parts[1]);
  const int max_attempts = std::stoi(parts[2]);
  if (max_attempts <= 0) {
    return std::nullopt;
  }
  return SubmitJobCommand{parts[0], priority, max_attempts, parts[3]};
}

inline std::string encode_submit_command(const SubmitJobCommand& command) {
  if (command.request_id.empty() || command.payload.empty() || command.max_attempts <= 0) {
    throw std::invalid_argument("invalid submit command");
  }
  return command.request_id + "|" + std::to_string(command.priority) + "|" +
         std::to_string(command.max_attempts) + "|" + command.payload;
}

struct JournalRecord {
  std::uint64_t sequence = 0;
  std::string op;
  std::uint64_t job_id = 0;
  std::string request_id;
  int priority = 0;
  int max_attempts = 1;
  int attempts = 0;
  JobState state = JobState::kPending;
  std::uint64_t next_run_ms = 0;
  std::string payload;
};

inline std::string journal_body(const JournalRecord& record) {
  return "btsjr1|" + std::to_string(record.sequence) + "|" + record.op + "|" +
         std::to_string(record.job_id) + "|" + record.request_id + "|" +
         std::to_string(record.priority) + "|" + std::to_string(record.max_attempts) + "|" +
         std::to_string(record.attempts) + "|" + job_state_name(record.state) + "|" +
         std::to_string(record.next_run_ms) + "|" + to_hex(record.payload);
}

inline std::string encode_journal_record(const JournalRecord& record) {
  const std::string body = journal_body(record);
  return body + "|" + std::to_string(capstone_checksum(body));
}

inline std::optional<JournalRecord> decode_journal_record(const std::string& line) {
  const auto parts = split_pipe(line);
  if (parts.size() != 12 || parts[0] != "btsjr1" || !all_digits(parts[1]) ||
      !all_digits(parts[3]) || parts[4].empty() || !all_digits(parts[5]) || !all_digits(parts[6]) ||
      !all_digits(parts[7]) || !all_digits(parts[9]) || !all_digits(parts[11])) {
    return std::nullopt;
  }
  auto state = parse_job_state(parts[8]);
  auto payload = from_hex(parts[10]);
  if (!state || !payload) {
    return std::nullopt;
  }
  JournalRecord record{};
  record.sequence = static_cast<std::uint64_t>(std::stoull(parts[1]));
  record.op = parts[2];
  record.job_id = static_cast<std::uint64_t>(std::stoull(parts[3]));
  record.request_id = parts[4];
  record.priority = std::stoi(parts[5]);
  record.max_attempts = std::stoi(parts[6]);
  record.attempts = std::stoi(parts[7]);
  record.state = *state;
  record.next_run_ms = static_cast<std::uint64_t>(std::stoull(parts[9]));
  record.payload = *payload;

  const std::string body = journal_body(record);
  if (std::to_string(capstone_checksum(body)) != parts[11]) {
    return std::nullopt;
  }
  return record;
}

class DurableJobRuntime {
 public:
  DurableJobRuntime(std::string journal_path, RuntimeConfig config)
      : journal_path_(std::move(journal_path)), config_(config), request_index_(128) {
    if (config_.queue_capacity == 0) {
      throw std::invalid_argument("queue capacity must be positive");
    }
  }

  DurableJobRuntime(const DurableJobRuntime&) = delete;
  DurableJobRuntime& operator=(const DurableJobRuntime&) = delete;

  DurableJobRuntime(DurableJobRuntime&& other) noexcept
      : journal_path_(std::move(other.journal_path_)),
        config_(other.config_),
        jobs_(std::move(other.jobs_)),
        request_index_(std::move(other.request_index_)),
        ready_(std::move(other.ready_)),
        counters_(other.counters_),
        last_job_id_(other.last_job_id_),
        ready_sequence_(other.ready_sequence_),
        journal_sequence_(other.journal_sequence_) {}

  DurableJobRuntime& operator=(DurableJobRuntime&& other) noexcept {
    if (this != &other) {
      std::lock_guard<std::mutex> lock(mutex_);
      journal_path_ = std::move(other.journal_path_);
      config_ = other.config_;
      jobs_ = std::move(other.jobs_);
      request_index_ = std::move(other.request_index_);
      ready_ = std::move(other.ready_);
      counters_ = other.counters_;
      last_job_id_ = other.last_job_id_;
      ready_sequence_ = other.ready_sequence_;
      journal_sequence_ = other.journal_sequence_;
    }
    return *this;
  }

  static DurableJobRuntime recover(std::string journal_path, RuntimeConfig config) {
    DurableJobRuntime runtime(std::move(journal_path), config);
    runtime.replay_journal();
    return runtime;
  }

  JobAcceptResult accept(const SubmitJobCommand& command, std::uint64_t now_ms) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (const auto existing = request_index_.find(command.request_id)) {
      ++counters_.duplicate_requests;
      return JobAcceptResult{false, true, false, *existing, "duplicate-request-id"};
    }
    if (ready_.size() >= config_.queue_capacity) {
      ++counters_.rejected_full;
      return JobAcceptResult{false, false, true, 0, "queue-full"};
    }
    JobRecord job{};
    job.id = ++last_job_id_;
    job.request_id = command.request_id;
    job.priority = command.priority;
    job.max_attempts = command.max_attempts;
    job.state = JobState::kPending;
    job.payload = command.payload;
    job.next_run_ms = now_ms;
    append_locked("ACCEPT", job);
    jobs_[job.id] = job;
    request_index_.insert(job.request_id, job.id);
    enqueue_locked(job);
    ++counters_.accepted;
    return JobAcceptResult{true, false, false, job.id, "accepted"};
  }

  std::optional<JobRecord> claim_next(std::uint64_t now_ms, const std::string& worker_id) {
    std::lock_guard<std::mutex> lock(mutex_);
    while (!ready_.empty()) {
      const ReadyJob item = ready_.pop();
      auto found = jobs_.find(item.job_id);
      if (found == jobs_.end()) {
        continue;
      }
      JobRecord& job = found->second;
      if ((job.state != JobState::kPending && job.state != JobState::kRetryWait) ||
          job.next_run_ms != item.next_run_ms || item.next_run_ms > now_ms) {
        if ((job.state == JobState::kPending || job.state == JobState::kRetryWait) &&
            item.next_run_ms > now_ms) {
          ready_.push(item);
        }
        continue;
      }
      job.state = JobState::kRunning;
      job.owner = worker_id;
      ++job.attempts;
      append_locked("RUNNING", job);
      return job;
    }
    return std::nullopt;
  }

  bool finish(std::uint64_t job_id, bool success, std::uint64_t now_ms) {
    std::lock_guard<std::mutex> lock(mutex_);
    auto found = jobs_.find(job_id);
    if (found == jobs_.end() || found->second.state != JobState::kRunning) {
      return false;
    }
    JobRecord& job = found->second;
    job.owner.clear();
    if (success) {
      job.state = JobState::kSucceeded;
      append_locked("SUCCEEDED", job);
      ++counters_.completed;
      return true;
    }
    if (job.attempts < job.max_attempts) {
      job.state = JobState::kRetryWait;
      job.next_run_ms = now_ms + config_.retry_delay_ms;
      append_locked("RETRY_WAIT", job);
      enqueue_locked(job);
      return true;
    }
    job.state = JobState::kFailed;
    append_locked("FAILED", job);
    ++counters_.failed;
    return true;
  }

  bool process_one(std::uint64_t now_ms, const std::string& worker_id, bool fail_first_attempt) {
    auto claimed = claim_next(now_ms, worker_id);
    if (!claimed) {
      return false;
    }
    const bool should_fail = fail_first_attempt && claimed->attempts == 1;
    return finish(claimed->id, !should_fail, now_ms);
  }

  [[nodiscard]] RuntimeSnapshot snapshot() const {
    std::lock_guard<std::mutex> lock(mutex_);
    RuntimeSnapshot result{};
    result.total_jobs = jobs_.size();
    result.ready_queue_size = ready_.size();
    result.queue_high_watermark = counters_.queue_high_watermark;
    for (const auto& [_, job] : jobs_) {
      switch (job.state) {
        case JobState::kPending:
          ++result.pending;
          break;
        case JobState::kRunning:
          ++result.running;
          break;
        case JobState::kSucceeded:
          ++result.succeeded;
          break;
        case JobState::kFailed:
          ++result.failed;
          break;
        case JobState::kRetryWait:
          ++result.retry_wait;
          break;
      }
    }
    return result;
  }

  [[nodiscard]] RuntimeCounters counters() const {
    std::lock_guard<std::mutex> lock(mutex_);
    return counters_;
  }

  [[nodiscard]] std::optional<JobRecord> find_by_request_id(const std::string& request_id) const {
    std::lock_guard<std::mutex> lock(mutex_);
    const auto id = request_index_.find(request_id);
    if (!id) {
      return std::nullopt;
    }
    const auto found = jobs_.find(*id);
    if (found == jobs_.end()) {
      return std::nullopt;
    }
    return found->second;
  }

 private:
  void enqueue_locked(const JobRecord& job) {
    ready_.push(ReadyJob{job.next_run_ms, job.priority, ++ready_sequence_, job.id});
    counters_.queue_high_watermark = std::max(counters_.queue_high_watermark, ready_.size());
  }

  void append_locked(const std::string& op, const JobRecord& job) {
    JournalRecord record{};
    record.sequence = ++journal_sequence_;
    record.op = op;
    record.job_id = job.id;
    record.request_id = job.request_id;
    record.priority = job.priority;
    record.max_attempts = job.max_attempts;
    record.attempts = job.attempts;
    record.state = job.state;
    record.next_run_ms = job.next_run_ms;
    record.payload = job.payload;
    std::ofstream out(journal_path_, std::ios::app | std::ios::binary);
    if (!out) {
      throw std::runtime_error("failed to open journal");
    }
    out << encode_journal_record(record) << '\n';
    out.flush();
    if (!out) {
      throw std::runtime_error("failed to write journal");
    }
    (void)config_.fsync_each_record;
  }

  void replay_journal() {
    std::lock_guard<std::mutex> lock(mutex_);
    jobs_.clear();
    ready_ = BinaryMinHeap<ReadyJob, ReadyJobEarlier>{};
    request_index_ = LinearProbeHashTable<std::uint64_t>(128);
    std::ifstream in(journal_path_, std::ios::binary);
    if (!in) {
      return;
    }
    std::string line;
    while (std::getline(in, line)) {
      if (line.empty()) {
        continue;
      }
      auto decoded = decode_journal_record(line);
      if (!decoded) {
        ++counters_.invalid_journal_records;
        break;
      }
      apply_replayed_record_locked(*decoded);
      ++counters_.journal_records_replayed;
    }
    for (auto& [_, job] : jobs_) {
      if (job.state == JobState::kRunning) {
        job.state = JobState::kRetryWait;
        job.owner.clear();
        job.next_run_ms += config_.retry_delay_ms;
        ++counters_.recovered_running;
      }
      if (job.state == JobState::kPending || job.state == JobState::kRetryWait) {
        enqueue_locked(job);
      }
    }
  }

  void apply_replayed_record_locked(const JournalRecord& record) {
    journal_sequence_ = std::max(journal_sequence_, record.sequence);
    last_job_id_ = std::max(last_job_id_, record.job_id);

    if (record.op == "ACCEPT") {
      if (request_index_.find(record.request_id)) {
        ++counters_.duplicate_requests;
        return;
      }
      JobRecord job{};
      job.id = record.job_id;
      job.request_id = record.request_id;
      job.priority = record.priority;
      job.max_attempts = record.max_attempts;
      job.attempts = record.attempts;
      job.state = JobState::kPending;
      job.payload = record.payload;
      job.next_run_ms = record.next_run_ms;
      jobs_[job.id] = job;
      request_index_.insert(job.request_id, job.id);
      return;
    }

    auto found = jobs_.find(record.job_id);
    if (found == jobs_.end()) {
      return;
    }
    JobRecord& job = found->second;
    if (job.state == JobState::kSucceeded || job.state == JobState::kFailed) {
      return;
    }
    job.priority = record.priority;
    job.max_attempts = record.max_attempts;
    job.attempts = record.attempts;
    job.state = record.state;
    job.next_run_ms = record.next_run_ms;
    job.payload = record.payload;
  }

  std::string journal_path_;
  RuntimeConfig config_;
  mutable std::mutex mutex_;
  std::map<std::uint64_t, JobRecord> jobs_;
  LinearProbeHashTable<std::uint64_t> request_index_;
  BinaryMinHeap<ReadyJob, ReadyJobEarlier> ready_;
  RuntimeCounters counters_;
  std::uint64_t last_job_id_ = 0;
  std::uint64_t ready_sequence_ = 0;
  std::uint64_t journal_sequence_ = 0;
};

}  // namespace bts

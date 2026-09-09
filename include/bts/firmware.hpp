#pragma once

#include <algorithm>
#include <array>
#include <cstddef>
#include <cstdint>
#include <limits>
#include <optional>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace bts {

enum class RingOverflowPolicy { kReject, kOverwriteOldest };

struct RingStats {
  std::size_t capacity = 0;
  std::size_t size = 0;
  std::size_t pushed = 0;
  std::size_t popped = 0;
  std::size_t rejected = 0;
  std::size_t overwritten = 0;
  std::size_t high_watermark = 0;
};

template <std::size_t Capacity>
class RingBuffer {
 public:
  static_assert(Capacity > 0);

  explicit RingBuffer(RingOverflowPolicy policy = RingOverflowPolicy::kReject) : policy_(policy) {}

  [[nodiscard]] bool push(std::uint8_t value) {
    if (size_ == Capacity) {
      if (policy_ == RingOverflowPolicy::kReject) {
        ++rejected_;
        return false;
      }
      data_[tail_] = value;
      tail_ = (tail_ + 1) % Capacity;
      head_ = (head_ + 1) % Capacity;
      ++pushed_;
      ++overwritten_;
      return true;
    }
    data_[tail_] = value;
    tail_ = (tail_ + 1) % Capacity;
    ++size_;
    ++pushed_;
    high_watermark_ = std::max(high_watermark_, size_);
    return true;
  }

  [[nodiscard]] std::optional<std::uint8_t> pop() {
    if (size_ == 0) {
      return std::nullopt;
    }
    const std::uint8_t value = data_[head_];
    head_ = (head_ + 1) % Capacity;
    --size_;
    ++popped_;
    return value;
  }

  [[nodiscard]] bool empty() const { return size_ == 0; }
  [[nodiscard]] bool full() const { return size_ == Capacity; }
  [[nodiscard]] std::size_t size() const { return size_; }
  [[nodiscard]] std::size_t capacity() const { return Capacity; }

  [[nodiscard]] RingStats stats() const {
    return RingStats{Capacity, size_, pushed_, popped_, rejected_, overwritten_, high_watermark_};
  }

 private:
  RingOverflowPolicy policy_;
  std::array<std::uint8_t, Capacity> data_{};
  std::size_t head_ = 0;
  std::size_t tail_ = 0;
  std::size_t size_ = 0;
  std::size_t pushed_ = 0;
  std::size_t popped_ = 0;
  std::size_t rejected_ = 0;
  std::size_t overwritten_ = 0;
  std::size_t high_watermark_ = 0;
};

struct SerialFrame {
  std::uint8_t type = 0;
  std::vector<std::uint8_t> payload;
};

struct ProtocolStats {
  std::size_t frames = 0;
  std::size_t ignored_bytes = 0;
  std::size_t checksum_errors = 0;
  std::size_t oversized_payloads = 0;
  std::size_t timeout_resets = 0;
};

inline constexpr std::uint8_t kFirmwareSof = 0xA5;
inline constexpr std::size_t kFirmwareMaxPayload = 32;

inline std::uint8_t firmware_checksum(std::uint8_t type, std::uint8_t length,
                                      const std::vector<std::uint8_t>& payload) {
  std::uint8_t checksum = static_cast<std::uint8_t>(type ^ length);
  for (const std::uint8_t value : payload) {
    checksum = static_cast<std::uint8_t>(checksum ^ value);
  }
  return checksum;
}

inline std::vector<std::uint8_t> encode_frame(const SerialFrame& frame) {
  if (frame.payload.size() > kFirmwareMaxPayload) {
    throw std::invalid_argument("payload exceeds protocol maximum");
  }
  const auto length = static_cast<std::uint8_t>(frame.payload.size());
  std::vector<std::uint8_t> bytes;
  bytes.reserve(frame.payload.size() + 4);
  bytes.push_back(kFirmwareSof);
  bytes.push_back(frame.type);
  bytes.push_back(length);
  bytes.insert(bytes.end(), frame.payload.begin(), frame.payload.end());
  bytes.push_back(firmware_checksum(frame.type, length, frame.payload));
  return bytes;
}

class ProtocolParser {
 public:
  explicit ProtocolParser(std::size_t max_payload = kFirmwareMaxPayload)
      : max_payload_(max_payload) {}

  bool feed(std::uint8_t byte, SerialFrame& out) {
    switch (state_) {
      case State::kWaitSof:
        if (byte == kFirmwareSof) {
          state_ = State::kType;
          payload_.clear();
        } else {
          ++stats_.ignored_bytes;
        }
        return false;
      case State::kType:
        type_ = byte;
        state_ = State::kLength;
        return false;
      case State::kLength:
        expected_length_ = byte;
        if (expected_length_ > max_payload_) {
          ++stats_.oversized_payloads;
          reset();
          return false;
        }
        payload_.clear();
        state_ = expected_length_ == 0 ? State::kChecksum : State::kPayload;
        return false;
      case State::kPayload:
        payload_.push_back(byte);
        if (payload_.size() == expected_length_) {
          state_ = State::kChecksum;
        }
        return false;
      case State::kChecksum:
        if (byte ==
            firmware_checksum(type_, static_cast<std::uint8_t>(expected_length_), payload_)) {
          out = SerialFrame{type_, payload_};
          ++stats_.frames;
          reset();
          return true;
        }
        ++stats_.checksum_errors;
        reset();
        return false;
    }
    return false;
  }

  void timeout() {
    if (state_ != State::kWaitSof) {
      ++stats_.timeout_resets;
      reset();
    }
  }

  [[nodiscard]] bool in_progress() const { return state_ != State::kWaitSof; }
  [[nodiscard]] ProtocolStats stats() const { return stats_; }

 private:
  enum class State { kWaitSof, kType, kLength, kPayload, kChecksum };

  void reset() {
    state_ = State::kWaitSof;
    type_ = 0;
    expected_length_ = 0;
    payload_.clear();
  }

  std::size_t max_payload_;
  State state_ = State::kWaitSof;
  std::uint8_t type_ = 0;
  std::size_t expected_length_ = 0;
  std::vector<std::uint8_t> payload_;
  ProtocolStats stats_;
};

struct PollingVsEventResult {
  std::size_t events = 0;
  std::size_t polling_checks = 0;
  std::uint64_t polling_total_latency_us = 0;
  std::uint64_t polling_max_latency_us = 0;
  std::uint64_t event_total_latency_us = 0;
  std::uint64_t event_max_latency_us = 0;
};

inline PollingVsEventResult compare_polling_and_events(
    const std::vector<std::uint64_t>& event_times_us, std::uint64_t poll_interval_us,
    std::uint64_t isr_dispatch_us) {
  if (poll_interval_us == 0) {
    throw std::invalid_argument("poll interval must be non-zero");
  }
  PollingVsEventResult result{};
  result.events = event_times_us.size();
  if (event_times_us.empty()) {
    return result;
  }
  result.polling_checks = static_cast<std::size_t>(event_times_us.back() / poll_interval_us) + 1;
  for (const std::uint64_t event_time : event_times_us) {
    const std::uint64_t next_poll =
        ((event_time + poll_interval_us - 1) / poll_interval_us) * poll_interval_us;
    const std::uint64_t polling_latency = next_poll - event_time;
    result.polling_total_latency_us += polling_latency;
    result.polling_max_latency_us = std::max(result.polling_max_latency_us, polling_latency);
    result.event_total_latency_us += isr_dispatch_us;
    result.event_max_latency_us = std::max(result.event_max_latency_us, isr_dispatch_us);
  }
  return result;
}

enum class FirmwareState { kIdle, kArmed, kActive, kFault, kRecovery };

inline const char* firmware_state_name(FirmwareState state) {
  switch (state) {
    case FirmwareState::kIdle:
      return "IDLE";
    case FirmwareState::kArmed:
      return "ARMED";
    case FirmwareState::kActive:
      return "ACTIVE";
    case FirmwareState::kFault:
      return "FAULT";
    case FirmwareState::kRecovery:
      return "RECOVERY";
  }
  return "UNKNOWN";
}

struct FirmwareTransition {
  std::uint64_t at_ms = 0;
  FirmwareState from = FirmwareState::kIdle;
  FirmwareState to = FirmwareState::kIdle;
  std::string reason;
};

struct SensorSample {
  std::uint64_t at_ms = 0;
  double value = 0.0;
  bool connected = true;
  bool actuator_available = true;
};

struct ControllerConfig {
  double arm_threshold = 27.0;
  double active_threshold = 30.0;
  double recovery_threshold = 25.0;
  double fault_low = -40.0;
  double fault_high = 125.0;
  std::uint64_t stale_timeout_ms = 60;
};

class SimulatedActuator {
 public:
  void set_available(bool available) { available_ = available; }

  bool write(bool enabled, std::uint64_t at_ms) {
    if (!available_) {
      return false;
    }
    if (enabled_ != enabled) {
      toggles_.push_back({at_ms, enabled});
    }
    enabled_ = enabled;
    return true;
  }

  [[nodiscard]] bool enabled() const { return enabled_; }
  [[nodiscard]] const std::vector<std::pair<std::uint64_t, bool>>& toggles() const {
    return toggles_;
  }

 private:
  bool available_ = true;
  bool enabled_ = false;
  std::vector<std::pair<std::uint64_t, bool>> toggles_;
};

class FirmwareController {
 public:
  FirmwareController(ControllerConfig config, SimulatedActuator& actuator)
      : config_(config), actuator_(actuator) {}

  void on_sample(const SensorSample& sample) {
    const bool stale =
        last_sample_ms_.has_value() && sample.at_ms - *last_sample_ms_ > config_.stale_timeout_ms;
    last_sample_ms_ = sample.at_ms;
    if (!sample.connected || stale || sample.value < config_.fault_low ||
        sample.value > config_.fault_high || !sample.actuator_available) {
      actuator_.set_available(sample.actuator_available);
      enter(sample.at_ms, FirmwareState::kFault,
            !sample.connected
                ? "sensor-disconnect"
                : (!sample.actuator_available ? "actuator-unavailable" : "invalid-or-stale"));
      actuator_.write(false, sample.at_ms);
      return;
    }

    actuator_.set_available(true);
    filtered_ = filtered_.has_value() ? (*filtered_ * 0.70 + sample.value * 0.30) : sample.value;
    switch (state_) {
      case FirmwareState::kIdle:
        if (*filtered_ >= config_.arm_threshold) {
          enter(sample.at_ms, FirmwareState::kArmed, "filtered-temp-crossed-arm-threshold");
        }
        break;
      case FirmwareState::kArmed:
        if (*filtered_ >= config_.active_threshold) {
          enter(sample.at_ms, FirmwareState::kActive, "filtered-temp-crossed-active-threshold");
          if (!actuator_.write(true, sample.at_ms)) {
            enter(sample.at_ms, FirmwareState::kFault, "actuator-write-failed");
          }
        } else if (*filtered_ <= config_.recovery_threshold) {
          enter(sample.at_ms, FirmwareState::kIdle, "cooled-before-activation");
        }
        break;
      case FirmwareState::kActive:
        if (*filtered_ <= config_.recovery_threshold) {
          actuator_.write(false, sample.at_ms);
          enter(sample.at_ms, FirmwareState::kRecovery, "cooled-below-recovery-threshold");
        }
        break;
      case FirmwareState::kFault:
        enter(sample.at_ms, FirmwareState::kRecovery, "valid-sample-after-fault");
        break;
      case FirmwareState::kRecovery:
        if (*filtered_ <= config_.arm_threshold) {
          enter(sample.at_ms, FirmwareState::kIdle, "recovered-to-idle-band");
        } else if (*filtered_ >= config_.active_threshold) {
          enter(sample.at_ms, FirmwareState::kActive, "recovered-but-still-hot");
          actuator_.write(true, sample.at_ms);
        }
        break;
    }
  }

  [[nodiscard]] FirmwareState state() const { return state_; }
  [[nodiscard]] const std::vector<FirmwareTransition>& transitions() const { return transitions_; }
  [[nodiscard]] std::optional<double> filtered_value() const { return filtered_; }

 private:
  void enter(std::uint64_t at_ms, FirmwareState next, std::string reason) {
    if (state_ == next) {
      return;
    }
    transitions_.push_back(FirmwareTransition{at_ms, state_, next, std::move(reason)});
    state_ = next;
  }

  ControllerConfig config_;
  SimulatedActuator& actuator_;
  FirmwareState state_ = FirmwareState::kIdle;
  std::optional<double> filtered_;
  std::optional<std::uint64_t> last_sample_ms_;
  std::vector<FirmwareTransition> transitions_;
};

struct TaskSpec {
  std::string name;
  std::uint64_t period_ms = 1;
  std::uint64_t worst_case_ms = 1;
};

struct TaskRuntime {
  std::string name;
  std::size_t runs = 0;
  std::uint64_t max_jitter_ms = 0;
  std::uint64_t total_jitter_ms = 0;
  std::size_t deadline_misses = 0;
  std::size_t overruns = 0;
};

struct CooperativeScheduleResult {
  std::uint64_t horizon_ms = 0;
  std::uint64_t idle_ms = 0;
  std::vector<TaskRuntime> tasks;
};

inline CooperativeScheduleResult simulate_cooperative_scheduler(const std::vector<TaskSpec>& specs,
                                                                std::uint64_t horizon_ms) {
  if (specs.empty()) {
    return CooperativeScheduleResult{horizon_ms, horizon_ms, {}};
  }
  std::vector<std::uint64_t> next_release(specs.size(), 0);
  CooperativeScheduleResult result{horizon_ms, 0, {}};
  result.tasks.reserve(specs.size());
  for (const auto& spec : specs) {
    result.tasks.push_back(TaskRuntime{spec.name});
  }

  std::uint64_t now = 0;
  while (now < horizon_ms) {
    std::optional<std::size_t> chosen;
    for (std::size_t index = 0; index < specs.size(); ++index) {
      if (next_release[index] <= now &&
          (!chosen || specs[index].period_ms < specs[*chosen].period_ms)) {
        chosen = index;
      }
    }
    if (!chosen) {
      const auto next_it = std::min_element(next_release.begin(), next_release.end());
      const std::uint64_t next = std::min(*next_it, horizon_ms);
      result.idle_ms += next - now;
      now = next;
      continue;
    }

    const std::size_t index = *chosen;
    const std::uint64_t scheduled = next_release[index];
    const std::uint64_t jitter = now - scheduled;
    auto& runtime = result.tasks[index];
    runtime.runs += 1;
    runtime.max_jitter_ms = std::max(runtime.max_jitter_ms, jitter);
    runtime.total_jitter_ms += jitter;
    if (specs[index].worst_case_ms > specs[index].period_ms) {
      runtime.overruns += 1;
    }
    if (now + specs[index].worst_case_ms > scheduled + specs[index].period_ms) {
      runtime.deadline_misses += 1;
    }
    now += specs[index].worst_case_ms;
    next_release[index] = scheduled + specs[index].period_ms;
  }
  return result;
}

class SimulatedMmio {
 public:
  enum Register : std::size_t { kGpioDirection = 0, kGpioOutput = 1, kGpioInput = 2, kStatus = 3 };

  void set_bits(Register reg, std::uint32_t mask) { registers_[reg] |= mask; }
  void clear_bits(Register reg, std::uint32_t mask) { registers_[reg] &= ~mask; }
  void toggle_bits(Register reg, std::uint32_t mask) { registers_[reg] ^= mask; }
  [[nodiscard]] bool any(Register reg, std::uint32_t mask) const {
    return (registers_[reg] & mask) != 0;
  }
  [[nodiscard]] std::uint32_t read(Register reg) const { return registers_[reg]; }

 private:
  std::array<std::uint32_t, 4> registers_{};
};

struct FirmwareResourceReport {
  std::size_t static_ring_bytes = 0;
  std::size_t protocol_max_payload = 0;
  std::size_t memory_budget_bytes = 0;
  bool within_budget = true;
};

template <std::size_t RingCapacity>
inline FirmwareResourceReport resource_report(std::size_t budget_bytes) {
  const std::size_t bytes = RingCapacity + kFirmwareMaxPayload + sizeof(ProtocolParser) +
                            sizeof(FirmwareController) + sizeof(SimulatedActuator);
  return FirmwareResourceReport{RingCapacity, kFirmwareMaxPayload, budget_bytes,
                                bytes <= budget_bytes};
}

}  // namespace bts

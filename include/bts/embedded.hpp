#pragma once

#include <cstddef>
#include <functional>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace bts {

class DigitalOutput {
 public:
  virtual ~DigitalOutput() = default;
  virtual void write(bool high, std::size_t tick) = 0;
  virtual bool read_back() const = 0;
};

struct OutputTransition {
  std::size_t tick = 0;
  bool high = false;
};

class SimulatedDigitalOutput final : public DigitalOutput {
 public:
  void write(bool high, std::size_t tick) override {
    if (high_ != high) {
      high_ = high;
      transitions_.push_back(OutputTransition{tick, high});
    }
  }

  bool read_back() const override { return high_; }
  const std::vector<OutputTransition>& transitions() const { return transitions_; }

 private:
  bool high_ = false;
  std::vector<OutputTransition> transitions_;
};

enum class ThermalState { kIdle, kCooling };

struct ThermalEvent {
  std::size_t tick = 0;
  double temperature_c = 0.0;
  std::string reason;
};

class ThermalController {
 public:
  ThermalController(double fan_on_c, double fan_off_c, DigitalOutput& fan)
      : fan_on_c_(fan_on_c), fan_off_c_(fan_off_c), fan_(fan) {
    if (fan_off_c_ >= fan_on_c_) {
      throw std::invalid_argument("thermal hysteresis requires off threshold below on threshold");
    }
  }

  void on_temperature_sample(std::size_t tick, double temperature_c) {
    if (state_ == ThermalState::kIdle && temperature_c >= fan_on_c_) {
      state_ = ThermalState::kCooling;
      fan_.write(true, tick);
      events_.push_back(ThermalEvent{tick, temperature_c, "simulated-overtemp-event"});
    } else if (state_ == ThermalState::kCooling && temperature_c <= fan_off_c_) {
      state_ = ThermalState::kIdle;
      fan_.write(false, tick);
      events_.push_back(ThermalEvent{tick, temperature_c, "cooldown-threshold"});
    }
  }

  ThermalState state() const { return state_; }
  const std::vector<ThermalEvent>& events() const { return events_; }

 private:
  double fan_on_c_;
  double fan_off_c_;
  DigitalOutput& fan_;
  ThermalState state_ = ThermalState::kIdle;
  std::vector<ThermalEvent> events_;
};

class ScriptedTemperatureInput {
 public:
  explicit ScriptedTemperatureInput(std::vector<double> samples) : samples_(std::move(samples)) {}

  void run(const std::function<void(std::size_t, double)>& callback) const {
    for (std::size_t tick = 0; tick < samples_.size(); ++tick) {
      callback(tick, samples_[tick]);
    }
  }

  std::size_t size() const { return samples_.size(); }

 private:
  std::vector<double> samples_;
};

}  // namespace bts

#include <cstddef>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <string>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/firmware.hpp"
#include "bts/json.hpp"

namespace {

void write_ring_stats(const bts::RingStats& stats) {
  std::cout << "{\"capacity\":" << stats.capacity << ",\"size\":" << stats.size
            << ",\"pushed\":" << stats.pushed << ",\"popped\":" << stats.popped
            << ",\"rejected\":" << stats.rejected << ",\"overwritten\":" << stats.overwritten
            << ",\"high_watermark\":" << stats.high_watermark << '}';
}

void write_protocol_stats(const bts::ProtocolStats& stats) {
  std::cout << "{\"frames\":" << stats.frames << ",\"ignored_bytes\":" << stats.ignored_bytes
            << ",\"checksum_errors\":" << stats.checksum_errors
            << ",\"oversized_payloads\":" << stats.oversized_payloads
            << ",\"timeout_resets\":" << stats.timeout_resets << '}';
}

void write_polling_result(const bts::PollingVsEventResult& result) {
  const auto events = static_cast<double>(result.events == 0 ? 1 : result.events);
  std::cout << "{\"events\":" << result.events << ",\"polling_checks\":" << result.polling_checks
            << ",\"polling_mean_latency_us\":"
            << static_cast<double>(result.polling_total_latency_us) / events
            << ",\"polling_max_latency_us\":" << result.polling_max_latency_us
            << ",\"event_mean_latency_us\":"
            << static_cast<double>(result.event_total_latency_us) / events
            << ",\"event_max_latency_us\":" << result.event_max_latency_us << '}';
}

void write_transitions(const std::vector<bts::FirmwareTransition>& transitions) {
  std::cout << '[';
  for (std::size_t index = 0; index < transitions.size(); ++index) {
    if (index != 0) {
      std::cout << ',';
    }
    const auto& transition = transitions[index];
    std::cout << "{\"at_ms\":" << transition.at_ms << ",\"from\":\""
              << bts::firmware_state_name(transition.from) << "\",\"to\":\""
              << bts::firmware_state_name(transition.to) << "\",\"reason\":\""
              << bts::json_escape(transition.reason) << "\"}";
  }
  std::cout << ']';
}

void write_scheduler_result(const bts::CooperativeScheduleResult& result) {
  std::cout << "{\"horizon_ms\":" << result.horizon_ms << ",\"idle_ms\":" << result.idle_ms
            << ",\"tasks\":[";
  for (std::size_t index = 0; index < result.tasks.size(); ++index) {
    if (index != 0) {
      std::cout << ',';
    }
    const auto& task = result.tasks[index];
    const auto runs = static_cast<double>(task.runs == 0 ? 1 : task.runs);
    std::cout << "{\"name\":\"" << bts::json_escape(task.name) << "\",\"runs\":" << task.runs
              << ",\"mean_jitter_ms\":" << static_cast<double>(task.total_jitter_ms) / runs
              << ",\"max_jitter_ms\":" << task.max_jitter_ms
              << ",\"deadline_misses\":" << task.deadline_misses
              << ",\"overruns\":" << task.overruns << '}';
  }
  std::cout << "]}";
}

bts::ProtocolStats protocol_fault_experiment() {
  bts::ProtocolParser parser;
  bts::SerialFrame parsed;
  for (std::uint8_t byte : bts::encode_frame(bts::SerialFrame{0x10, {1, 2, 3}})) {
    (void)parser.feed(byte, parsed);
  }
  auto corrupt = bts::encode_frame(bts::SerialFrame{0x11, {4, 5, 6}});
  corrupt.back() ^= 0x7U;
  for (std::uint8_t byte : corrupt) {
    (void)parser.feed(byte, parsed);
  }
  const std::vector<std::uint8_t> oversized{bts::kFirmwareSof, 0x12, 80};
  for (std::uint8_t byte : oversized) {
    (void)parser.feed(byte, parsed);
  }
  const std::vector<std::uint8_t> truncated{bts::kFirmwareSof, 0x13, 2, 99};
  for (std::uint8_t byte : truncated) {
    (void)parser.feed(byte, parsed);
  }
  parser.timeout();
  return parser.stats();
}

std::pair<bts::RingStats, bts::RingStats> ring_overflow_experiment() {
  bts::RingBuffer<8> reject(bts::RingOverflowPolicy::kReject);
  bts::RingBuffer<8> overwrite(bts::RingOverflowPolicy::kOverwriteOldest);
  for (std::uint8_t value = 0; value < 12; ++value) {
    (void)reject.push(value);
    (void)overwrite.push(value);
  }
  for (int count = 0; count < 3; ++count) {
    (void)reject.pop();
    (void)overwrite.pop();
  }
  return {reject.stats(), overwrite.stats()};
}

std::vector<bts::SensorSample> capstone_samples() {
  return {{0, 24.0, true, true},    {10, 28.0, true, true},  {20, 34.0, true, true},
          {30, 38.0, true, true},   {40, 39.0, true, true},  {50, 22.0, true, true},
          {60, 20.0, true, true},   {140, 23.0, true, true}, {150, 200.0, true, true},
          {160, 24.0, false, true}, {170, 23.0, true, true}, {180, 22.0, true, true}};
}

std::uint32_t mmio_bitwise_experiment() {
  bts::SimulatedMmio mmio;
  constexpr std::uint32_t kLed = 1U << 5U;
  constexpr std::uint32_t kFault = 1U << 1U;
  mmio.set_bits(bts::SimulatedMmio::kGpioDirection, kLed);
  mmio.set_bits(bts::SimulatedMmio::kGpioOutput, kLed);
  mmio.toggle_bits(bts::SimulatedMmio::kGpioOutput, kLed);
  mmio.set_bits(bts::SimulatedMmio::kStatus, kFault);
  return mmio.read(bts::SimulatedMmio::kGpioDirection) ^
         mmio.read(bts::SimulatedMmio::kGpioOutput) ^ mmio.read(bts::SimulatedMmio::kStatus);
}

std::size_t parser_fuzz_samples() {
  std::uint64_t state = 0xC001D00DULL;
  std::size_t accepted = 0;
  bts::ProtocolParser parser;
  bts::SerialFrame parsed;
  for (std::size_t sample = 0; sample < 400; ++sample) {
    auto bytes = bts::encode_frame(
        bts::SerialFrame{static_cast<std::uint8_t>(sample & 0x7fU), {1, 2, 3, 4}});
    state ^= state << 13;
    state ^= state >> 7;
    state ^= state << 17;
    bytes[static_cast<std::size_t>(state % bytes.size())] ^=
        static_cast<std::uint8_t>(state & 0xffU);
    for (std::uint8_t byte : bytes) {
      if (parser.feed(byte, parsed)) {
        ++accepted;
      }
    }
    parser.timeout();
  }
  return accepted;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 10);
  std::uint64_t sink = 0;

  const auto [reject_stats, overwrite_stats] = ring_overflow_experiment();
  const bts::ProtocolStats protocol_stats = protocol_fault_experiment();
  const bts::PollingVsEventResult polling =
      bts::compare_polling_and_events({750, 9990, 10010, 28420, 51234, 77777}, 1000, 35);
  const auto schedule = bts::simulate_cooperative_scheduler({{"sensor-sample", 10, 1},
                                                             {"serial-drain", 20, 2},
                                                             {"telemetry", 50, 4},
                                                             {"flash-write", 100, 130}},
                                                            250);
  bts::SimulatedActuator actuator;
  bts::FirmwareController controller({}, actuator);
  for (const auto& sample : capstone_samples()) {
    controller.on_sample(sample);
  }
  const auto resources = bts::resource_report<256>(64 * 1024);
  const std::uint32_t mmio_digest = mmio_bitwise_experiment();
  const std::size_t accepted_fuzz_frames = parser_fuzz_samples();

  const auto protocol_bench = bts::benchmark("serial-protocol-parse", warmup, repetitions, [&] {
    bts::ProtocolParser parser;
    bts::SerialFrame parsed;
    const auto encoded = bts::encode_frame(bts::SerialFrame{0x22, {1, 3, 5, 7, 9}});
    for (int count = 0; count < 1000; ++count) {
      for (std::uint8_t byte : encoded) {
        if (parser.feed(byte, parsed)) {
          sink += parsed.type;
        }
      }
    }
  });
  const auto scheduler_bench =
      bts::benchmark("cooperative-scheduler-sim", warmup, repetitions, [&] {
        const auto observed = bts::simulate_cooperative_scheduler({{"sensor-sample", 10, 1},
                                                                   {"serial-drain", 20, 2},
                                                                   {"telemetry", 50, 4},
                                                                   {"flash-write", 100, 130}},
                                                                  250);
        sink += observed.idle_ms;
      });

  std::cout << std::fixed << std::setprecision(6);
  std::cout
      << "{\"lab\":\"firmware-boundary\",\"hardware\":{\"physical_mcu_detected\":false,"
         "\"claim\":\"deterministic simulator and HAL boundary only; no physical MCU timing is "
         "claimed\"},\"hal\":[\"sensor\",\"actuator\",\"clock\",\"serial\"],"
      << "\"state_machine\":{\"final_state\":\"" << bts::firmware_state_name(controller.state())
      << "\",\"transitions\":";
  write_transitions(controller.transitions());
  std::cout << "},\"polling_vs_event\":";
  write_polling_result(polling);
  std::cout << ",\"ring_buffer\":{\"reject\":";
  write_ring_stats(reject_stats);
  std::cout << ",\"overwrite_oldest\":";
  write_ring_stats(overwrite_stats);
  std::cout << "},\"serial_protocol\":{\"frame_shape\":\"SOF TYPE LENGTH PAYLOAD CHECKSUM\","
               "\"fault_stats\":";
  write_protocol_stats(protocol_stats);
  std::cout << ",\"accepted_mutated_frames\":" << accepted_fuzz_frames << "},\"scheduler\":";
  write_scheduler_result(schedule);
  std::cout << ",\"resource_budget\":{\"static_ring_bytes\":" << resources.static_ring_bytes
            << ",\"protocol_max_payload\":" << resources.protocol_max_payload
            << ",\"memory_budget_bytes\":" << resources.memory_budget_bytes
            << ",\"within_budget\":" << (resources.within_budget ? "true" : "false")
            << "},\"memory_mapped_io\":{\"base\":\"0x40000000 simulated\",\"digest\":"
            << mmio_digest << ",\"uses_bit_masks\":true},\"benchmarks\":{\"protocol_parse\":";
  bts::write_stats_json(std::cout, protocol_bench);
  std::cout << ",\"scheduler_sim\":";
  bts::write_stats_json(std::cout, scheduler_bench);
  std::cout << "},\"sink\":" << sink << "}\n";

  const bool ok = reject_stats.rejected == 4 && overwrite_stats.overwritten == 4 &&
                  protocol_stats.frames == 1 && protocol_stats.checksum_errors == 1 &&
                  protocol_stats.oversized_payloads == 1 && protocol_stats.timeout_resets == 1 &&
                  polling.polling_max_latency_us > polling.event_max_latency_us &&
                  !controller.transitions().empty() && resources.within_budget && mmio_digest != 0;
  return ok ? 0 : 1;
}

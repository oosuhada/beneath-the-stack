#include <atomic>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/embedded.hpp"
#include "bts/json.hpp"

int main(int argc, char** argv) {
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 10);
  const std::vector<double> samples = {24.0, 25.0, 27.0, 28.5, 30.0, 27.5,
                                       26.0, 25.5, 29.0, 27.0, 25.0};

  bts::SimulatedDigitalOutput fan;
  bts::ThermalController controller(28.0, 26.0, fan);
  bts::ScriptedTemperatureInput input(samples);
  input.run([&](std::size_t tick, double value) { controller.on_temperature_sample(tick, value); });

  std::atomic<std::uint64_t> sink{0};
  const auto event_loop =
      bts::benchmark("deterministic-hal-state-machine", warmup, repetitions, [&] {
        std::uint64_t transitions = 0;
        for (int repeat = 0; repeat < 1000; ++repeat) {
          bts::SimulatedDigitalOutput output;
          bts::ThermalController machine(28.0, 26.0, output);
          bts::ScriptedTemperatureInput scripted(samples);
          scripted.run(
              [&](std::size_t tick, double value) { machine.on_temperature_sample(tick, value); });
          transitions += output.transitions().size();
        }
        sink.store(transitions, std::memory_order_relaxed);
      });

  std::cout << "{\"lab\":\"embedded-simulator\",\"hardware_claim\":false,\"input\":\"scripted "
               "temperature samples\",\"hal_boundary\":\"DigitalOutput interface\",\"samples\":"
            << input.size() << ",\"events\":[";
  for (std::size_t i = 0; i < controller.events().size(); ++i) {
    if (i != 0) {
      std::cout << ',';
    }
    const auto& event = controller.events()[i];
    std::cout << "{\"tick\":" << event.tick << ",\"temperature_c\":" << event.temperature_c
              << ",\"reason\":\"" << event.reason << "\"}";
  }
  std::cout << "],\"output_transitions\":[";
  for (std::size_t i = 0; i < fan.transitions().size(); ++i) {
    if (i != 0) {
      std::cout << ',';
    }
    const auto& transition = fan.transitions()[i];
    std::cout << "{\"tick\":" << transition.tick
              << ",\"high\":" << (transition.high ? "true" : "false") << '}';
  }
  std::cout << "],\"benchmark\":";
  bts::write_stats_json(std::cout, event_loop);
  std::cout << "}\n";
  return fan.transitions().size() == 4 && sink.load(std::memory_order_relaxed) > 0 ? 0 : 1;
}

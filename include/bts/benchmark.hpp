#pragma once

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstddef>
#include <functional>
#include <numeric>
#include <stdexcept>
#include <string>
#include <vector>

namespace bts {

struct BenchmarkStats {
  std::string name;
  std::size_t warmup = 0;
  std::size_t repetitions = 0;
  double mean_ms = 0.0;
  double stddev_ms = 0.0;
  double p50_ms = 0.0;
  double p95_ms = 0.0;
  double min_ms = 0.0;
  double max_ms = 0.0;
};

inline double percentile(std::vector<double> samples, double quantile) {
  if (samples.empty()) {
    throw std::invalid_argument("percentile requires at least one sample");
  }
  std::sort(samples.begin(), samples.end());
  const double position = quantile * static_cast<double>(samples.size() - 1);
  const auto lower = static_cast<std::size_t>(std::floor(position));
  const auto upper = static_cast<std::size_t>(std::ceil(position));
  if (lower == upper) {
    return samples[lower];
  }
  const double fraction = position - static_cast<double>(lower);
  return samples[lower] + (samples[upper] - samples[lower]) * fraction;
}

template <typename Function>
BenchmarkStats benchmark(const std::string& name, std::size_t warmup, std::size_t repetitions,
                         Function&& function) {
  if (repetitions == 0) {
    throw std::invalid_argument("benchmark repetitions must be greater than zero");
  }

  for (std::size_t i = 0; i < warmup; ++i) {
    std::invoke(function);
  }

  std::vector<double> samples;
  samples.reserve(repetitions);
  for (std::size_t i = 0; i < repetitions; ++i) {
    const auto start = std::chrono::steady_clock::now();
    std::invoke(function);
    const auto stop = std::chrono::steady_clock::now();
    const auto elapsed = std::chrono::duration<double, std::milli>(stop - start).count();
    samples.push_back(elapsed);
  }

  const double mean =
      std::accumulate(samples.begin(), samples.end(), 0.0) / static_cast<double>(samples.size());
  double squared_error = 0.0;
  for (const double sample : samples) {
    const double delta = sample - mean;
    squared_error += delta * delta;
  }

  BenchmarkStats result;
  result.name = name;
  result.warmup = warmup;
  result.repetitions = repetitions;
  result.mean_ms = mean;
  result.stddev_ms = std::sqrt(squared_error / static_cast<double>(samples.size()));
  result.p50_ms = percentile(samples, 0.50);
  result.p95_ms = percentile(samples, 0.95);
  result.min_ms = *std::min_element(samples.begin(), samples.end());
  result.max_ms = *std::max_element(samples.begin(), samples.end());
  return result;
}

}  // namespace bts

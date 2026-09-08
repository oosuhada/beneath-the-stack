#pragma once

#include <iomanip>
#include <ostream>
#include <sstream>
#include <string>
#include <string_view>
#include <vector>

#include "bts/benchmark.hpp"

namespace bts {

inline std::string json_escape(std::string_view input) {
  std::ostringstream output;
  for (const char ch : input) {
    switch (ch) {
      case '\\':
        output << "\\\\";
        break;
      case '"':
        output << "\\\"";
        break;
      case '\n':
        output << "\\n";
        break;
      case '\r':
        output << "\\r";
        break;
      case '\t':
        output << "\\t";
        break;
      default:
        output << ch;
    }
  }
  return output.str();
}

inline void write_stats_json(std::ostream& out, const BenchmarkStats& stats) {
  out << std::fixed << std::setprecision(6);
  out << "{\"name\":\"" << json_escape(stats.name) << "\",\"warmup\":" << stats.warmup
      << ",\"repetitions\":" << stats.repetitions << ",\"mean_ms\":" << stats.mean_ms
      << ",\"stddev_ms\":" << stats.stddev_ms << ",\"p50_ms\":" << stats.p50_ms
      << ",\"p95_ms\":" << stats.p95_ms << ",\"min_ms\":" << stats.min_ms
      << ",\"max_ms\":" << stats.max_ms << "}";
}

template <typename T>
void write_number_array(std::ostream& out, const std::vector<T>& values) {
  out << '[';
  for (std::size_t i = 0; i < values.size(); ++i) {
    if (i != 0) {
      out << ',';
    }
    out << values[i];
  }
  out << ']';
}

}  // namespace bts

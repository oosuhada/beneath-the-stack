#pragma once

#include <cstddef>
#include <stdexcept>
#include <string>

namespace bts {

inline bool has_flag(int argc, char** argv, const std::string& flag) {
  for (int i = 1; i < argc; ++i) {
    if (argv[i] == flag) {
      return true;
    }
  }
  return false;
}

inline std::size_t size_argument(int argc, char** argv, const std::string& flag,
                                 std::size_t fallback) {
  for (int i = 1; i + 1 < argc; ++i) {
    if (argv[i] == flag) {
      try {
        return static_cast<std::size_t>(std::stoull(argv[i + 1]));
      } catch (const std::exception&) {
        throw std::invalid_argument("invalid numeric value for " + flag);
      }
    }
  }
  return fallback;
}

}  // namespace bts

#include <cstddef>
#include <cstdint>

extern "C" std::uint64_t sum_contiguous(const std::uint32_t* values, std::size_t count) {
  std::uint64_t total = 0;
  for (std::size_t i = 0; i < count; ++i) {
    total += values[i];
  }
  return total;
}

extern "C" std::uint64_t sum_stride(const std::uint32_t* values, std::size_t count,
                                    std::size_t stride) {
  std::uint64_t total = 0;
  for (std::size_t i = 0; i < count; i += stride) {
    total += values[i];
  }
  return total;
}

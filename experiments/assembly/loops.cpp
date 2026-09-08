#include <cstddef>
#include <cstdint>
#include <atomic>
#include <mutex>

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

extern "C" void atomic_increment(std::atomic<std::uint64_t>* value, std::size_t count) {
  for (std::size_t i = 0; i < count; ++i) {
    value->fetch_add(1, std::memory_order_relaxed);
  }
}

extern "C" void mutex_increment(std::uint64_t* value, std::mutex* mutex, std::size_t count) {
  for (std::size_t i = 0; i < count; ++i) {
    std::lock_guard<std::mutex> lock(*mutex);
    ++(*value);
  }
}

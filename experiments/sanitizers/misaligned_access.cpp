#include <cstddef>
#include <cstdint>

int main() {
  alignas(std::max_align_t) unsigned char storage[32] = {};
  volatile std::size_t offset = 1;
  auto* value = reinterpret_cast<std::uint64_t*>(storage + offset);
  *value = 0x425453ULL;  // Deliberate misaligned access for UBSan evidence.
  return static_cast<int>(*value == 0);
}

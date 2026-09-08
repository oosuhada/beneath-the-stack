#include <cstddef>

int main() {
  auto* bytes = new unsigned char[16];
  volatile std::size_t index = 16;
  bytes[index] = 0x42;  // Deliberate one-byte heap overflow for ASan evidence.
  delete[] bytes;
  return 0;
}

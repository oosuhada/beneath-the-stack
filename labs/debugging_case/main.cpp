#include <cstring>
#include <iostream>
#include <limits>
#include <string>
#include <vector>

namespace {

int buggy_use_after_free() {
  auto* payload = new int[4]{1, 2, 3, 4};
  delete[] payload;
  return payload[2];
}

int fixed_ownership_boundary() {
  std::vector<int> payload{1, 2, 3, 4};
  const int observed = payload[2];
  payload.clear();
  return observed;
}

int buggy_signed_overflow(int delta) {
  const int near_limit = std::numeric_limits<int>::max();
  return near_limit + delta;
}

int fixed_saturating_add(int delta) {
  const int near_limit = std::numeric_limits<int>::max();
  if (delta > 0 && near_limit > std::numeric_limits<int>::max() - delta) {
    return std::numeric_limits<int>::max();
  }
  return near_limit + delta;
}

bool has_flag(int argc, char** argv, const char* flag) {
  for (int index = 1; index < argc; ++index) {
    if (std::strcmp(argv[index], flag) == 0) {
      return true;
    }
  }
  return false;
}

}  // namespace

int main(int argc, char** argv) {
  if (has_flag(argc, argv, "--buggy-use-after-free")) {
    std::cout << buggy_use_after_free() << '\n';
    return 0;
  }
  if (has_flag(argc, argv, "--buggy-signed-overflow")) {
    std::cout << buggy_signed_overflow(1) << '\n';
    return 0;
  }
  if (has_flag(argc, argv, "--fixed")) {
    std::cout << "{\"lab\":\"debugging-case\",\"mode\":\"fixed\",\"value\":"
              << fixed_ownership_boundary() << ",\"saturating_add\":" << fixed_saturating_add(1)
              << "}\n";
    return 0;
  }
  std::cout << "{\"lab\":\"debugging-case\","
            << "\"bug\":\"heap use-after-free and signed-overflow fixtures are disabled by "
               "default\","
            << "\"investigation\":\"tools/run_debugging_case.sh attempts ASan for UAF and "
               "falls back to UBSan signed-overflow evidence if this macOS ASan runtime is "
               "unavailable\","
            << "\"default_safe\":true}\n";
  return 0;
}

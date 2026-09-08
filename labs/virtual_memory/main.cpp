#include <fcntl.h>
#include <sys/mman.h>
#include <sys/resource.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#if defined(__APPLE__)
#include <mach/mach.h>
#endif

#include <atomic>
#include <chrono>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

std::uint64_t resident_bytes() {
#if defined(__APPLE__)
  mach_task_basic_info_data_t info{};
  mach_msg_type_number_t count = MACH_TASK_BASIC_INFO_COUNT;
  if (::task_info(::mach_task_self(), MACH_TASK_BASIC_INFO, reinterpret_cast<task_info_t>(&info),
                  &count) != KERN_SUCCESS) {
    return 0;
  }
  return static_cast<std::uint64_t>(info.resident_size);
#elif defined(__linux__)
  std::ifstream input("/proc/self/statm");
  std::uint64_t total_pages = 0;
  std::uint64_t resident_pages = 0;
  input >> total_pages >> resident_pages;
  (void)total_pages;
  return resident_pages * static_cast<std::uint64_t>(::sysconf(_SC_PAGESIZE));
#else
  return 0;
#endif
}

void* map_anonymous(std::size_t bytes) {
  void* memory = ::mmap(nullptr, bytes, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  if (memory == MAP_FAILED) {
    throw std::runtime_error("anonymous mmap failed");
  }
  return memory;
}

void touch_pages(void* memory, std::size_t bytes, std::size_t page_size) {
  auto* data = static_cast<volatile std::uint8_t*>(memory);
  for (std::size_t offset = 0; offset < bytes; offset += page_size) {
    data[offset] = static_cast<std::uint8_t>(offset / page_size);
  }
}

bool mapped_file_persists(std::size_t page_size) {
  char path[] = "/tmp/bts-mmap-XXXXXX";
  const int fd = ::mkstemp(path);
  if (fd < 0) {
    throw std::runtime_error("mmap file setup failed");
  }
  if (::ftruncate(fd, static_cast<off_t>(page_size * 2)) != 0) {
    ::close(fd);
    ::unlink(path);
    throw std::runtime_error("ftruncate failed");
  }
  void* mapping = ::mmap(nullptr, page_size * 2, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
  if (mapping == MAP_FAILED) {
    ::close(fd);
    ::unlink(path);
    throw std::runtime_error("file mmap failed");
  }
  auto* bytes = static_cast<char*>(mapping);
  bytes[page_size + 17] = 'B';
  bytes[page_size + 18] = 'T';
  bytes[page_size + 19] = 'S';
  const bool sync_ok = ::msync(mapping, page_size * 2, MS_SYNC) == 0;
  ::munmap(mapping, page_size * 2);
  char persisted[3] = {};
  const ssize_t count =
      ::pread(fd, persisted, sizeof(persisted), static_cast<off_t>(page_size + 17));
  ::close(fd);
  ::unlink(path);
  return sync_ok && count == 3 && std::string(persisted, 3) == "BTS";
}

int guard_page_failure_signal(std::size_t page_size) {
  const pid_t child = ::fork();
  if (child < 0) {
    throw std::runtime_error("guard-page fork failed");
  }
  if (child == 0) {
    void* page = ::mmap(nullptr, page_size, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (page == MAP_FAILED) {
      ::_exit(125);
    }
    volatile std::uint8_t value = *static_cast<volatile std::uint8_t*>(page);
    (void)value;
    ::_exit(126);
  }
  int status = 0;
  if (::waitpid(child, &status, 0) < 0) {
    throw std::runtime_error("guard-page wait failed");
  }
  return WIFSIGNALED(status) ? WTERMSIG(status) : 0;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t mebibytes = bts::size_argument(argc, argv, "--mib", 64);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 6);
  const std::size_t page_size = static_cast<std::size_t>(::sysconf(_SC_PAGESIZE));
  const std::size_t bytes = mebibytes * 1024 * 1024;
  std::atomic<std::uint64_t> sink{0};

  const auto map_only = bts::benchmark("mmap-without-page-touch", warmup, repetitions, [&] {
    void* memory = map_anonymous(bytes);
    sink.fetch_add(reinterpret_cast<std::uintptr_t>(memory) & 1U, std::memory_order_relaxed);
    ::munmap(memory, bytes);
  });
  const auto map_and_touch = bts::benchmark("mmap-and-touch-every-page", warmup, repetitions, [&] {
    void* memory = map_anonymous(bytes);
    touch_pages(memory, bytes, page_size);
    sink.fetch_add(static_cast<volatile std::uint8_t*>(memory)[bytes - page_size],
                   std::memory_order_relaxed);
    ::munmap(memory, bytes);
  });

  const std::uint64_t resident_before = resident_bytes();
  void* observation = map_anonymous(bytes);
  const std::uint64_t resident_after_map = resident_bytes();
  touch_pages(observation, bytes, page_size);
  const std::uint64_t resident_after_touch = resident_bytes();
  ::munmap(observation, bytes);

  const bool file_persistence = mapped_file_persists(page_size);
  const int guard_signal = guard_page_failure_signal(page_size);

  std::cout << "{\"lab\":\"virtual-memory\",\"mapping_bytes\":" << bytes
            << ",\"page_size_bytes\":" << page_size << ",\"page_count\":" << bytes / page_size
            << ",\"resident_bytes\":{\"before\":" << resident_before
            << ",\"after_map_without_touch\":" << resident_after_map
            << ",\"after_touch_every_page\":" << resident_after_touch
            << "},\"mapped_file_persisted\":" << (file_persistence ? "true" : "false")
            << ",\"intentional_guard_page_failure_signal\":" << guard_signal << ",\"map_only\":";
  bts::write_stats_json(std::cout, map_only);
  std::cout << ",\"map_and_touch\":";
  bts::write_stats_json(std::cout, map_and_touch);
  std::cout << "}\n";
  return file_persistence && guard_signal != 0 && resident_after_touch >= resident_after_map ? 0
                                                                                             : 1;
}

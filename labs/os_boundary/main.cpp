#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#if defined(__APPLE__)
#include <mach/mach.h>
#endif

#include <atomic>
#include <cerrno>
#include <chrono>
#include <condition_variable>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <mutex>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

void close_fd(int fd) {
  if (fd >= 0) {
    ::close(fd);
  }
}

void write_all(int fd, const void* data, std::size_t bytes) {
  const auto* cursor = static_cast<const std::byte*>(data);
  std::size_t written = 0;
  while (written < bytes) {
    const ssize_t count = ::write(fd, cursor + written, bytes - written);
    if (count < 0 && errno == EINTR) {
      continue;
    }
    if (count <= 0) {
      throw std::runtime_error("write_all failed");
    }
    written += static_cast<std::size_t>(count);
  }
}

std::string read_exact_string(int fd, std::size_t bytes) {
  std::string result(bytes, '\0');
  std::size_t received = 0;
  while (received < bytes) {
    const ssize_t count = ::read(fd, result.data() + received, bytes - received);
    if (count < 0 && errno == EINTR) {
      continue;
    }
    if (count <= 0) {
      throw std::runtime_error("read_exact_string failed");
    }
    received += static_cast<std::size_t>(count);
  }
  return result;
}

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

struct FdIdentityObservation {
  int descriptor_number = 3;
  std::string inherited_parent_read;
  std::string inherited_child_read;
  std::string independent_parent_read;
  std::string independent_child_read;
};

FdIdentityObservation fd_identity_experiment() {
  constexpr int kObservedFd = 3;
  char path[] = "/tmp/bts-fd-identity-XXXXXX";
  const int raw = ::mkstemp(path);
  if (raw < 0) {
    throw std::runtime_error("mkstemp failed");
  }
  const std::string payload = "abcdef";
  write_all(raw, payload.data(), payload.size());
  if (::lseek(raw, 0, SEEK_SET) < 0) {
    close_fd(raw);
    ::unlink(path);
    throw std::runtime_error("lseek failed");
  }
  if (raw != kObservedFd) {
    close_fd(kObservedFd);
    if (::dup2(raw, kObservedFd) != kObservedFd) {
      close_fd(raw);
      ::unlink(path);
      throw std::runtime_error("dup2 fd identity setup failed");
    }
    close_fd(raw);
  }

  int gate[2];
  int child_out[2];
  if (::pipe(gate) != 0 || ::pipe(child_out) != 0) {
    close_fd(kObservedFd);
    ::unlink(path);
    throw std::runtime_error("fd identity pipe setup failed");
  }
  pid_t child = ::fork();
  if (child < 0) {
    throw std::runtime_error("fd identity fork failed");
  }
  if (child == 0) {
    close_fd(gate[1]);
    close_fd(child_out[0]);
    (void)read_exact_string(gate[0], 1);
    const std::string observed = read_exact_string(kObservedFd, 2);
    write_all(child_out[1], observed.data(), observed.size());
    close_fd(gate[0]);
    close_fd(child_out[1]);
    close_fd(kObservedFd);
    ::_exit(0);
  }
  close_fd(gate[0]);
  close_fd(child_out[1]);
  const std::string inherited_parent = read_exact_string(kObservedFd, 2);
  const char token = 'x';
  write_all(gate[1], &token, 1);
  close_fd(gate[1]);
  const std::string inherited_child = read_exact_string(child_out[0], 2);
  close_fd(child_out[0]);
  int status = 0;
  ::waitpid(child, &status, 0);

  if (::lseek(kObservedFd, 0, SEEK_SET) < 0) {
    close_fd(kObservedFd);
    ::unlink(path);
    throw std::runtime_error("lseek reset failed");
  }
  int independent_out[2];
  if (::pipe(independent_out) != 0) {
    close_fd(kObservedFd);
    ::unlink(path);
    throw std::runtime_error("independent fd pipe failed");
  }
  child = ::fork();
  if (child < 0) {
    throw std::runtime_error("independent fd fork failed");
  }
  if (child == 0) {
    close_fd(independent_out[0]);
    close_fd(kObservedFd);
    const int reopened = ::open(path, O_RDONLY);
    if (reopened < 0 || ::dup2(reopened, kObservedFd) != kObservedFd) {
      ::_exit(127);
    }
    if (reopened != kObservedFd) {
      close_fd(reopened);
    }
    const std::string observed = read_exact_string(kObservedFd, 2);
    write_all(independent_out[1], observed.data(), observed.size());
    close_fd(independent_out[1]);
    close_fd(kObservedFd);
    ::_exit(0);
  }
  close_fd(independent_out[1]);
  const std::string independent_parent = read_exact_string(kObservedFd, 2);
  const std::string independent_child = read_exact_string(independent_out[0], 2);
  close_fd(independent_out[0]);
  ::waitpid(child, &status, 0);
  close_fd(kObservedFd);
  ::unlink(path);
  return FdIdentityObservation{kObservedFd, inherited_parent, inherited_child, independent_parent,
                               independent_child};
}

struct SyscallBoundaryObservation {
  bool direct_syscall_used = false;
  bool write_observed = false;
  std::string limitation;
};

SyscallBoundaryObservation direct_syscall_write_experiment() {
  int channel[2];
  if (::pipe(channel) != 0) {
    throw std::runtime_error("direct syscall pipe failed");
  }
  const char payload[] = "syscall";
#if defined(__APPLE__)
  const ssize_t written = ::write(channel[1], payload, sizeof(payload) - 1);
  const bool direct_syscall_used = false;
  const std::string limitation =
      "macOS marks syscall(2) deprecated; use the supported libc wrapper for this portable lab";
#else
  const long written = ::syscall(SYS_write, channel[1], payload, sizeof(payload) - 1);
  const bool direct_syscall_used = true;
  const std::string limitation;
#endif
  close_fd(channel[1]);
  const std::string observed = read_exact_string(channel[0], sizeof(payload) - 1);
  close_fd(channel[0]);
  const auto expected = static_cast<std::int64_t>(sizeof(payload) - 1);
  return SyscallBoundaryObservation{
      direct_syscall_used, static_cast<std::int64_t>(written) == expected && observed == "syscall",
      limitation};
}

void no_switch_loop(std::size_t rounds) {
  volatile std::uint64_t value = 0;
  for (std::size_t i = 0; i < rounds; ++i) {
    value += i;
  }
  (void)value;
}

void thread_ping_pong(std::size_t rounds) {
  std::mutex mutex;
  std::condition_variable cv;
  bool parent_turn = true;
  bool done = false;
  std::thread worker([&] {
    for (;;) {
      std::unique_lock<std::mutex> lock(mutex);
      cv.wait(lock, [&] { return !parent_turn || done; });
      if (done) {
        return;
      }
      parent_turn = true;
      cv.notify_one();
    }
  });
  for (std::size_t i = 0; i < rounds; ++i) {
    std::unique_lock<std::mutex> lock(mutex);
    cv.wait(lock, [&] { return parent_turn; });
    parent_turn = false;
    cv.notify_one();
    cv.wait(lock, [&] { return parent_turn; });
  }
  {
    std::lock_guard<std::mutex> lock(mutex);
    done = true;
    parent_turn = false;
  }
  cv.notify_one();
  worker.join();
}

void process_ping_pong(std::size_t rounds) {
  int parent_to_child[2];
  int child_to_parent[2];
  if (::pipe(parent_to_child) != 0 || ::pipe(child_to_parent) != 0) {
    throw std::runtime_error("process ping-pong pipe failed");
  }
  const pid_t child = ::fork();
  if (child < 0) {
    throw std::runtime_error("process ping-pong fork failed");
  }
  if (child == 0) {
    close_fd(parent_to_child[1]);
    close_fd(child_to_parent[0]);
    char byte = 0;
    while (::read(parent_to_child[0], &byte, 1) == 1) {
      write_all(child_to_parent[1], &byte, 1);
    }
    close_fd(parent_to_child[0]);
    close_fd(child_to_parent[1]);
    ::_exit(0);
  }
  close_fd(parent_to_child[0]);
  close_fd(child_to_parent[1]);
  char byte = 'p';
  for (std::size_t i = 0; i < rounds; ++i) {
    write_all(parent_to_child[1], &byte, 1);
    (void)read_exact_string(child_to_parent[0], 1);
  }
  close_fd(parent_to_child[1]);
  close_fd(child_to_parent[0]);
  int status = 0;
  ::waitpid(child, &status, 0);
}

void write_payload_file(std::size_t bytes, bool sync_file) {
  char path[] = "/tmp/bts-fsync-XXXXXX";
  const int fd = ::mkstemp(path);
  if (fd < 0) {
    throw std::runtime_error("fsync temp file failed");
  }
  std::vector<char> payload(bytes, 'd');
  write_all(fd, payload.data(), payload.size());
  if (sync_file && ::fsync(fd) != 0) {
    close_fd(fd);
    ::unlink(path);
    throw std::runtime_error("fsync failed");
  }
  close_fd(fd);
  ::unlink(path);
}

std::filesystem::path create_read_fixture(std::size_t bytes) {
  char path[] = "/tmp/bts-read-mmap-XXXXXX";
  const int fd = ::mkstemp(path);
  if (fd < 0) {
    throw std::runtime_error("read/mmap fixture failed");
  }
  std::vector<char> payload(bytes);
  for (std::size_t i = 0; i < payload.size(); ++i) {
    payload[i] = static_cast<char>('a' + (i % 23));
  }
  write_all(fd, payload.data(), payload.size());
  if (::fsync(fd) != 0) {
    close_fd(fd);
    ::unlink(path);
    throw std::runtime_error("fixture fsync failed");
  }
  close_fd(fd);
  return path;
}

std::uint64_t read_loop_checksum(const std::filesystem::path& path) {
  const int fd = ::open(path.c_str(), O_RDONLY);
  if (fd < 0) {
    throw std::runtime_error("read loop open failed");
  }
  std::uint64_t checksum = 0;
  std::vector<char> buffer(4096);
  while (true) {
    const ssize_t count = ::read(fd, buffer.data(), buffer.size());
    if (count < 0 && errno == EINTR) {
      continue;
    }
    if (count < 0) {
      close_fd(fd);
      throw std::runtime_error("read loop failed");
    }
    if (count == 0) {
      break;
    }
    for (ssize_t i = 0; i < count; ++i) {
      checksum += static_cast<unsigned char>(buffer[static_cast<std::size_t>(i)]);
    }
  }
  close_fd(fd);
  return checksum;
}

std::uint64_t mmap_checksum(const std::filesystem::path& path, std::size_t bytes) {
  const int fd = ::open(path.c_str(), O_RDONLY);
  if (fd < 0) {
    throw std::runtime_error("mmap open failed");
  }
  void* mapping = ::mmap(nullptr, bytes, PROT_READ, MAP_PRIVATE, fd, 0);
  if (mapping == MAP_FAILED) {
    close_fd(fd);
    throw std::runtime_error("mmap failed");
  }
  const auto* data = static_cast<const volatile unsigned char*>(mapping);
  std::uint64_t checksum = 0;
  for (std::size_t i = 0; i < bytes; ++i) {
    checksum += data[i];
  }
  ::munmap(mapping, bytes);
  close_fd(fd);
  return checksum;
}

struct CowObservation {
  std::uint64_t parent_rss_before_fork = 0;
  std::uint64_t parent_rss_after_child_write = 0;
  std::uint64_t child_rss_before_write = 0;
  std::uint64_t child_rss_after_write = 0;
  std::size_t pages_written = 0;
  int parent_first_byte_after_child = 0;
  int child_first_byte_after_write = 0;
};

CowObservation cow_experiment(std::size_t bytes) {
  const std::size_t page_size = static_cast<std::size_t>(::sysconf(_SC_PAGESIZE));
  void* memory = ::mmap(nullptr, bytes, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  if (memory == MAP_FAILED) {
    throw std::runtime_error("cow mmap failed");
  }
  auto* data = static_cast<volatile unsigned char*>(memory);
  for (std::size_t offset = 0; offset < bytes; offset += page_size) {
    data[offset] = 1;
  }
  int channel[2];
  if (::pipe(channel) != 0) {
    ::munmap(memory, bytes);
    throw std::runtime_error("cow pipe failed");
  }
  CowObservation observation;
  observation.parent_rss_before_fork = resident_bytes();
  const pid_t child = ::fork();
  if (child < 0) {
    ::munmap(memory, bytes);
    throw std::runtime_error("cow fork failed");
  }
  if (child == 0) {
    close_fd(channel[0]);
    CowObservation child_observation;
    child_observation.child_rss_before_write = resident_bytes();
    for (std::size_t offset = 0; offset < bytes; offset += page_size) {
      data[offset] = 2;
      ++child_observation.pages_written;
    }
    child_observation.child_rss_after_write = resident_bytes();
    child_observation.child_first_byte_after_write = data[0];
    write_all(channel[1], &child_observation, sizeof(child_observation));
    close_fd(channel[1]);
    ::munmap(memory, bytes);
    ::_exit(0);
  }
  close_fd(channel[1]);
  const std::string raw = read_exact_string(channel[0], sizeof(CowObservation));
  close_fd(channel[0]);
  const std::uint64_t parent_rss_before_fork = observation.parent_rss_before_fork;
  std::memcpy(&observation, raw.data(), sizeof(CowObservation));
  observation.parent_rss_before_fork = parent_rss_before_fork;
  int status = 0;
  ::waitpid(child, &status, 0);
  observation.parent_first_byte_after_child = data[0];
  observation.parent_rss_after_child_write = resident_bytes();
  ::munmap(memory, bytes);
  return observation;
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 6);
  const std::size_t switch_rounds = bts::size_argument(argc, argv, "--switch-rounds", 1000);
  const std::size_t io_bytes = bts::size_argument(argc, argv, "--io-bytes", 1 << 20);
  const std::size_t cow_mib = bts::size_argument(argc, argv, "--cow-mib", 16);

  const FdIdentityObservation fd_identity = fd_identity_experiment();
  const SyscallBoundaryObservation syscall_boundary = direct_syscall_write_experiment();
  const CowObservation cow = cow_experiment(cow_mib * 1024 * 1024);
  const std::filesystem::path read_fixture = create_read_fixture(io_bytes);
  std::atomic<std::uint64_t> sink{0};

  const auto no_switch =
      bts::benchmark("no-switch-loop", warmup, repetitions, [&] { no_switch_loop(switch_rounds); });
  const auto thread_switch = bts::benchmark("thread-condition-variable-ping-pong", warmup,
                                            repetitions, [&] { thread_ping_pong(switch_rounds); });
  const auto process_switch = bts::benchmark("process-pipe-ping-pong", warmup, repetitions,
                                             [&] { process_ping_pong(switch_rounds); });
  const auto write_close = bts::benchmark("write-close-without-fsync", warmup, repetitions,
                                          [&] { write_payload_file(4096, false); });
  const auto write_fsync = bts::benchmark("write-fsync-close", warmup, repetitions,
                                          [&] { write_payload_file(4096, true); });
  const auto read_loop = bts::benchmark("read-loop-sequential-file", warmup, repetitions, [&] {
    sink.store(read_loop_checksum(read_fixture), std::memory_order_relaxed);
  });
  const auto mmap_read = bts::benchmark("mmap-sequential-file", warmup, repetitions, [&] {
    sink.store(mmap_checksum(read_fixture, io_bytes), std::memory_order_relaxed);
  });
  const std::uint64_t read_checksum = read_loop_checksum(read_fixture);
  const std::uint64_t mmap_observed_checksum = mmap_checksum(read_fixture, io_bytes);
  std::filesystem::remove(read_fixture);

  std::cout << "{\"lab\":\"os-boundary\",\"platform\":\"POSIX user-space observations, xv6 "
               "source-reading bridge\",\"switch_rounds\":"
            << switch_rounds << ",\"io_bytes\":" << io_bytes
            << ",\"syscall_boundary\":{\"direct_syscall_used\":"
            << (syscall_boundary.direct_syscall_used ? "true" : "false")
            << ",\"write_observed\":" << (syscall_boundary.write_observed ? "true" : "false")
            << ",\"limitation\":\"" << bts::json_escape(syscall_boundary.limitation) << "\"}"
            << ",\"fd_identity\":{\"descriptor_number\":" << fd_identity.descriptor_number
            << ",\"inherited_parent_read\":\""
            << bts::json_escape(fd_identity.inherited_parent_read)
            << "\",\"inherited_child_read\":\""
            << bts::json_escape(fd_identity.inherited_child_read)
            << "\",\"independent_parent_read\":\""
            << bts::json_escape(fd_identity.independent_parent_read)
            << "\",\"independent_child_read\":\""
            << bts::json_escape(fd_identity.independent_child_read)
            << "\"},\"copy_on_write\":{\"parent_rss_before_fork\":" << cow.parent_rss_before_fork
            << ",\"parent_rss_after_child_write\":" << cow.parent_rss_after_child_write
            << ",\"child_rss_before_write\":" << cow.child_rss_before_write
            << ",\"child_rss_after_write\":" << cow.child_rss_after_write
            << ",\"pages_written\":" << cow.pages_written
            << ",\"parent_first_byte_after_child\":" << cow.parent_first_byte_after_child
            << ",\"child_first_byte_after_write\":" << cow.child_first_byte_after_write
            << "},\"read_vs_mmap\":{\"checksums_match\":"
            << (read_checksum == mmap_observed_checksum ? "true" : "false") << ",\"read_loop\":";
  bts::write_stats_json(std::cout, read_loop);
  std::cout << ",\"mmap\":";
  bts::write_stats_json(std::cout, mmap_read);
  std::cout << "},\"context_switch\":{\"no_switch\":";
  bts::write_stats_json(std::cout, no_switch);
  std::cout << ",\"thread_ping_pong\":";
  bts::write_stats_json(std::cout, thread_switch);
  std::cout << ",\"process_ping_pong\":";
  bts::write_stats_json(std::cout, process_switch);
  std::cout << "},\"durability\":{\"claim\":\"write success is not the same as a completed fsync "
               "durability boundary\",\"write_close\":";
  bts::write_stats_json(std::cout, write_close);
  std::cout << ",\"write_fsync\":";
  bts::write_stats_json(std::cout, write_fsync);
  std::cout << "}}\n";

  return syscall_boundary.write_observed && fd_identity.inherited_parent_read == "ab" &&
                 fd_identity.inherited_child_read == "cd" &&
                 fd_identity.independent_parent_read == "ab" &&
                 fd_identity.independent_child_read == "ab" &&
                 cow.parent_first_byte_after_child == 1 && cow.child_first_byte_after_write == 2 &&
                 read_checksum == mmap_observed_checksum
             ? 0
             : 1;
}

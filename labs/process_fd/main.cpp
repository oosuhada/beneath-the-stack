#include <fcntl.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#include <atomic>
#include <cerrno>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <stdexcept>
#include <string>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

struct ChildObservation {
  pid_t pid;
  pid_t parent_pid;
  int local_value;
};

ChildObservation process_isolation_experiment(int& parent_local) {
  int channel[2];
  if (::pipe(channel) != 0) {
    throw std::runtime_error("pipe failed");
  }
  const pid_t child = ::fork();
  if (child < 0) {
    ::close(channel[0]);
    ::close(channel[1]);
    throw std::runtime_error("fork failed");
  }
  if (child == 0) {
    ::close(channel[0]);
    parent_local = 99;
    const ChildObservation observation{::getpid(), ::getppid(), parent_local};
    const ssize_t written = ::write(channel[1], &observation, sizeof(observation));
    ::close(channel[1]);
    ::_exit(written == static_cast<ssize_t>(sizeof(observation)) ? 0 : 2);
  }

  ::close(channel[1]);
  ChildObservation observation{};
  const ssize_t received = ::read(channel[0], &observation, sizeof(observation));
  ::close(channel[0]);
  int status = 0;
  ::waitpid(child, &status, 0);
  if (received != static_cast<ssize_t>(sizeof(observation)) || !WIFEXITED(status) ||
      WEXITSTATUS(status) != 0) {
    throw std::runtime_error("child process experiment failed");
  }
  return observation;
}

std::pair<std::string, std::string> duplicated_descriptor_offset_experiment() {
  char path[] = "/tmp/bts-fd-XXXXXX";
  const int fd = ::mkstemp(path);
  if (fd < 0) {
    throw std::runtime_error("mkstemp failed");
  }
  ::unlink(path);
  const std::string payload = "abcdef";
  if (::write(fd, payload.data(), payload.size()) != static_cast<ssize_t>(payload.size()) ||
      ::lseek(fd, 0, SEEK_SET) < 0) {
    ::close(fd);
    throw std::runtime_error("temporary file setup failed");
  }
  const int duplicate = ::dup(fd);
  if (duplicate < 0) {
    ::close(fd);
    throw std::runtime_error("dup failed");
  }
  char first[3] = {};
  char second[3] = {};
  const ssize_t first_count = ::read(fd, first, 2);
  const ssize_t second_count = ::read(duplicate, second, 2);
  ::close(duplicate);
  ::close(fd);
  if (first_count != 2 || second_count != 2) {
    throw std::runtime_error("descriptor read failed");
  }
  return {std::string(first, 2), std::string(second, 2)};
}

void fork_and_wait() {
  const pid_t child = ::fork();
  if (child < 0) {
    throw std::runtime_error("fork benchmark failed");
  }
  if (child == 0) {
    ::_exit(0);
  }
  int status = 0;
  if (::waitpid(child, &status, 0) < 0 || !WIFEXITED(status)) {
    throw std::runtime_error("waitpid benchmark failed");
  }
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 1);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 12);
  int parent_local = 7;
  const ChildObservation child = process_isolation_experiment(parent_local);
  const auto [first, second] = duplicated_descriptor_offset_experiment();
  std::atomic<pid_t> sink{0};
  const pid_t cached_pid = ::getpid();

  const auto getpid_stats = bts::benchmark("getpid-call", warmup, repetitions, [&] {
    pid_t value = 0;
    for (int i = 0; i < 10000; ++i) {
      value = ::getpid();
    }
    sink.store(value, std::memory_order_relaxed);
  });
  const auto cached_stats = bts::benchmark("cached-pid-load", warmup, repetitions, [&] {
    pid_t value = 0;
    for (int i = 0; i < 10000; ++i) {
      value = cached_pid;
      std::atomic_signal_fence(std::memory_order_seq_cst);
    }
    sink.store(value, std::memory_order_relaxed);
  });
  const auto fork_stats = bts::benchmark("fork-and-wait", warmup, repetitions, fork_and_wait);

  std::cout
      << "{\"lab\":\"process-fd\",\"platform\":\"POSIX\",\"process_isolation\":{\"parent_pid\":"
      << ::getpid() << ",\"child_pid\":" << child.pid
      << ",\"child_parent_pid\":" << child.parent_pid << ",\"parent_local_after\":" << parent_local
      << ",\"child_local\":" << child.local_value << "},\"dup_shared_offset\":{\"first_read\":\""
      << first << "\",\"second_read\":\"" << second << "\"},\"getpid\":";
  bts::write_stats_json(std::cout, getpid_stats);
  std::cout << ",\"cached_pid\":";
  bts::write_stats_json(std::cout, cached_stats);
  std::cout << ",\"fork_wait\":";
  bts::write_stats_json(std::cout, fork_stats);
  std::cout << "}\n";
  return parent_local == 7 && child.local_value == 99 && first == "ab" && second == "cd" ? 0 : 1;
}

#include <fcntl.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#include <atomic>
#include <cerrno>
#include <chrono>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

struct ChildObservation {
  pid_t pid;
  pid_t parent_pid;
  int local_value;
};

struct ExecObservation {
  std::string output;
  int exit_code = -1;
};

struct PipelineObservation {
  std::string output;
  std::vector<int> exit_codes;
};

struct ZombieObservation {
  std::string state_before_wait;
  int exit_code = -1;
};

void write_all_fd(int fd, const void* data, std::size_t bytes) {
  const auto* cursor = static_cast<const std::byte*>(data);
  std::size_t written = 0;
  while (written < bytes) {
    const ssize_t result = ::write(fd, cursor + written, bytes - written);
    if (result < 0 && errno == EINTR) {
      continue;
    }
    if (result <= 0) {
      throw std::runtime_error("write failed");
    }
    written += static_cast<std::size_t>(result);
  }
}

std::string read_all_fd(int fd) {
  std::string output;
  char buffer[1024];
  while (true) {
    const ssize_t count = ::read(fd, buffer, sizeof(buffer));
    if (count < 0 && errno == EINTR) {
      continue;
    }
    if (count < 0) {
      throw std::runtime_error("read failed");
    }
    if (count == 0) {
      return output;
    }
    output.append(buffer, static_cast<std::size_t>(count));
  }
}

int wait_exit_code(pid_t child) {
  int status = 0;
  if (::waitpid(child, &status, 0) < 0) {
    throw std::runtime_error("waitpid failed");
  }
  return WIFEXITED(status) ? WEXITSTATUS(status) : -1;
}

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

ExecObservation exec_inherited_stdout_experiment() {
  int channel[2];
  if (::pipe(channel) != 0) {
    throw std::runtime_error("exec pipe failed");
  }
  const pid_t child = ::fork();
  if (child < 0) {
    throw std::runtime_error("exec fork failed");
  }
  if (child == 0) {
    ::close(channel[0]);
    const char before[] = "before-exec\n";
    const ssize_t ignored = ::write(channel[1], before, sizeof(before) - 1);
    (void)ignored;
    if (::dup2(channel[1], STDOUT_FILENO) < 0) {
      ::_exit(120);
    }
    ::close(channel[1]);
    ::execl("/bin/echo", "echo", "after-exec", static_cast<char*>(nullptr));
    ::_exit(121);
  }
  ::close(channel[1]);
  const std::string output = read_all_fd(channel[0]);
  ::close(channel[0]);
  return ExecObservation{output, wait_exit_code(child)};
}

PipelineObservation three_stage_pipeline_experiment() {
  char path[] = "/tmp/bts-pipeline-XXXXXX";
  const int input_fd = ::mkstemp(path);
  if (input_fd < 0) {
    throw std::runtime_error("pipeline temp file failed");
  }
  const std::string input = "apple red\npear green\napple green\napple gold\nplum red\n";
  write_all_fd(input_fd, input.data(), input.size());
  ::close(input_fd);

  int first_pipe[2];
  int second_pipe[2];
  int output_pipe[2];
  if (::pipe(first_pipe) != 0 || ::pipe(second_pipe) != 0 || ::pipe(output_pipe) != 0) {
    ::unlink(path);
    throw std::runtime_error("pipeline pipe failed");
  }

  const pid_t cat = ::fork();
  if (cat == 0) {
    ::dup2(first_pipe[1], STDOUT_FILENO);
    ::close(first_pipe[0]);
    ::close(first_pipe[1]);
    ::close(second_pipe[0]);
    ::close(second_pipe[1]);
    ::close(output_pipe[0]);
    ::close(output_pipe[1]);
    ::execl("/bin/cat", "cat", path, static_cast<char*>(nullptr));
    ::_exit(122);
  }
  if (cat < 0) {
    ::unlink(path);
    throw std::runtime_error("pipeline cat fork failed");
  }

  const pid_t grep = ::fork();
  if (grep == 0) {
    ::dup2(first_pipe[0], STDIN_FILENO);
    ::dup2(second_pipe[1], STDOUT_FILENO);
    ::close(first_pipe[0]);
    ::close(first_pipe[1]);
    ::close(second_pipe[0]);
    ::close(second_pipe[1]);
    ::close(output_pipe[0]);
    ::close(output_pipe[1]);
    ::execl("/usr/bin/grep", "grep", "apple", static_cast<char*>(nullptr));
    ::_exit(123);
  }
  if (grep < 0) {
    ::unlink(path);
    throw std::runtime_error("pipeline grep fork failed");
  }

  const pid_t wc = ::fork();
  if (wc == 0) {
    ::dup2(second_pipe[0], STDIN_FILENO);
    ::dup2(output_pipe[1], STDOUT_FILENO);
    ::close(first_pipe[0]);
    ::close(first_pipe[1]);
    ::close(second_pipe[0]);
    ::close(second_pipe[1]);
    ::close(output_pipe[0]);
    ::close(output_pipe[1]);
    ::execl("/usr/bin/wc", "wc", "-l", static_cast<char*>(nullptr));
    ::_exit(124);
  }
  if (wc < 0) {
    ::unlink(path);
    throw std::runtime_error("pipeline wc fork failed");
  }

  ::close(first_pipe[0]);
  ::close(first_pipe[1]);
  ::close(second_pipe[0]);
  ::close(second_pipe[1]);
  ::close(output_pipe[1]);
  const std::string output = read_all_fd(output_pipe[0]);
  ::close(output_pipe[0]);
  ::unlink(path);
  return PipelineObservation{output,
                             {wait_exit_code(cat), wait_exit_code(grep), wait_exit_code(wc)}};
}

std::size_t nonblocking_pipe_capacity_experiment() {
  int channel[2];
  if (::pipe(channel) != 0) {
    throw std::runtime_error("capacity pipe failed");
  }
  const int flags = ::fcntl(channel[1], F_GETFL, 0);
  if (flags < 0 || ::fcntl(channel[1], F_SETFL, flags | O_NONBLOCK) != 0) {
    throw std::runtime_error("nonblocking pipe setup failed");
  }
  std::vector<char> chunk(4096, 'x');
  std::size_t total = 0;
  while (true) {
    const ssize_t count = ::write(channel[1], chunk.data(), chunk.size());
    if (count > 0) {
      total += static_cast<std::size_t>(count);
      continue;
    }
    if (count < 0 && errno == EINTR) {
      continue;
    }
    if (count < 0 && (errno == EAGAIN || errno == EWOULDBLOCK)) {
      break;
    }
    throw std::runtime_error("unexpected pipe capacity result");
  }
  ::close(channel[1]);
  std::size_t drained = 0;
  char drain[4096];
  while (true) {
    const ssize_t count = ::read(channel[0], drain, sizeof(drain));
    if (count > 0) {
      drained += static_cast<std::size_t>(count);
      continue;
    }
    if (count == 0) {
      break;
    }
    if (errno != EINTR) {
      throw std::runtime_error("pipe drain failed");
    }
  }
  ::close(channel[0]);
  if (drained != total) {
    throw std::runtime_error("pipe capacity accounting mismatch");
  }
  return total;
}

std::string process_state(pid_t pid) {
#if defined(__linux__)
  std::ifstream input("/proc/" + std::to_string(pid) + "/stat");
  std::string line;
  std::getline(input, line);
  const std::size_t close = line.rfind(')');
  return close != std::string::npos && close + 2 < line.size() ? std::string(1, line[close + 2])
                                                               : "?";
#elif defined(__APPLE__)
  const std::string command = "/bin/ps -o state= -p " + std::to_string(pid);
  FILE* stream = ::popen(command.c_str(), "r");
  if (stream == nullptr) {
    return "?";
  }
  char buffer[64] = {};
  const char* result = std::fgets(buffer, sizeof(buffer), stream);
  ::pclose(stream);
  if (result == nullptr) {
    return "?";
  }
  std::string state(buffer);
  const std::size_t first = state.find_first_not_of(" \t\r\n");
  return first == std::string::npos ? "?" : std::string(1, state[first]);
#else
  (void)pid;
  return "unsupported";
#endif
}

ZombieObservation zombie_before_wait_experiment() {
  const pid_t child = ::fork();
  if (child < 0) {
    throw std::runtime_error("zombie fork failed");
  }
  if (child == 0) {
    ::_exit(23);
  }
  std::string state = "?";
  for (int attempt = 0; attempt < 50; ++attempt) {
    std::this_thread::sleep_for(std::chrono::milliseconds(2));
    state = process_state(child);
    if (state == "Z") {
      break;
    }
  }
  return ZombieObservation{state, wait_exit_code(child)};
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
  constexpr int kCallsPerSample = 1000000;
  int parent_local = 7;
  const ChildObservation child = process_isolation_experiment(parent_local);
  const auto [first, second] = duplicated_descriptor_offset_experiment();
  const ExecObservation exec_observation = exec_inherited_stdout_experiment();
  const PipelineObservation pipeline = three_stage_pipeline_experiment();
  const std::size_t pipe_capacity = nonblocking_pipe_capacity_experiment();
  const ZombieObservation zombie = zombie_before_wait_experiment();
  std::atomic<pid_t> sink{0};
  volatile pid_t cached_pid = ::getpid();

  const auto getpid_stats = bts::benchmark("getpid-call", warmup, repetitions, [&] {
    pid_t value = 0;
    for (int i = 0; i < kCallsPerSample; ++i) {
      value = ::getpid();
    }
    sink.store(value, std::memory_order_relaxed);
  });
  const auto cached_stats = bts::benchmark("cached-pid-load", warmup, repetitions, [&] {
    pid_t value = 0;
    for (int i = 0; i < kCallsPerSample; ++i) {
      value = cached_pid;
    }
    sink.store(value, std::memory_order_relaxed);
  });
  const auto fork_stats = bts::benchmark("fork-and-wait", warmup, repetitions, fork_and_wait);

  std::cout
      << "{\"lab\":\"process-fd\",\"platform\":\"POSIX\",\"process_isolation\":{\"parent_pid\":"
      << ::getpid() << ",\"child_pid\":" << child.pid
      << ",\"child_parent_pid\":" << child.parent_pid << ",\"parent_local_after\":" << parent_local
      << ",\"child_local\":" << child.local_value << "},\"dup_shared_offset\":{\"first_read\":\""
      << first << "\",\"second_read\":\"" << second
      << "\"},\"exec_inherited_stdout\":{\"output\":\"" << bts::json_escape(exec_observation.output)
      << "\",\"exit_code\":" << exec_observation.exit_code
      << "},\"three_stage_pipeline\":{\"command_shape\":\"cat file | grep apple | wc "
         "-l\",\"output\":\""
      << bts::json_escape(pipeline.output) << "\",\"exit_codes\":[" << pipeline.exit_codes[0] << ','
      << pipeline.exit_codes[1] << ',' << pipeline.exit_codes[2]
      << "]},\"pipe_capacity_observed_bytes\":" << pipe_capacity
      << ",\"zombie_before_wait\":{\"state\":\"" << bts::json_escape(zombie.state_before_wait)
      << "\",\"exit_code\":" << zombie.exit_code << "},\"calls_per_sample\":" << kCallsPerSample
      << ",\"getpid\":";
  bts::write_stats_json(std::cout, getpid_stats);
  std::cout << ",\"cached_pid\":";
  bts::write_stats_json(std::cout, cached_stats);
  std::cout << ",\"fork_wait\":";
  bts::write_stats_json(std::cout, fork_stats);
  std::cout << "}\n";
  const bool pipeline_ok =
      pipeline.exit_codes == std::vector<int>({0, 0, 0}) && std::stoi(pipeline.output) == 3;
  const bool exec_ok =
      exec_observation.exit_code == 0 && exec_observation.output == "before-exec\nafter-exec\n";
  return parent_local == 7 && child.local_value == 99 && first == "ab" && second == "cd" &&
                 pipeline_ok && exec_ok && pipe_capacity > 0 && zombie.exit_code == 23
             ? 0
             : 1;
}

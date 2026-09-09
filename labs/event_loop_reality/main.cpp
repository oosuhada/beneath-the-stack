#include <fcntl.h>
#include <poll.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>

#include <algorithm>
#include <cerrno>
#include <chrono>
#include <csignal>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <optional>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

#ifdef __APPLE__
#include <sys/event.h>
#endif

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/json.hpp"

namespace {

using Clock = std::chrono::steady_clock;

struct Workload {
  std::size_t clients = 32;
  std::size_t bytes_per_client = 128;
  std::size_t chunk = 16;
  int slow_first_ms = 20;
};

struct Pair {
  int server = -1;
  int client = -1;
};

struct ServerResult {
  std::string mode;
  std::string event_backend;
  std::size_t clients = 0;
  std::size_t bytes = 0;
  std::size_t read_calls = 0;
  double elapsed_ms = 0.0;
  double throughput_bytes_per_sec = 0.0;
};

[[noreturn]] void fail_errno(const std::string& message) {
  throw std::runtime_error(message + ": " + std::strerror(errno));
}

void close_fd(int& fd) {
  if (fd >= 0) {
    ::close(fd);
    fd = -1;
  }
}

void set_nonblocking(int fd) {
  const int flags = ::fcntl(fd, F_GETFL, 0);
  if (flags < 0) {
    fail_errno("fcntl F_GETFL failed");
  }
  if (::fcntl(fd, F_SETFL, flags | O_NONBLOCK) != 0) {
    fail_errno("fcntl F_SETFL failed");
  }
}

std::vector<Pair> make_pairs(std::size_t clients) {
  std::vector<Pair> pairs;
  pairs.reserve(clients);
  for (std::size_t index = 0; index < clients; ++index) {
    int fds[2] = {-1, -1};
    if (::socketpair(AF_UNIX, SOCK_STREAM, 0, fds) != 0) {
      fail_errno("socketpair failed");
    }
    pairs.push_back(Pair{fds[0], fds[1]});
  }
  return pairs;
}

std::vector<std::uint8_t> payload_for(std::size_t index, std::size_t bytes) {
  std::vector<std::uint8_t> payload(bytes);
  for (std::size_t offset = 0; offset < bytes; ++offset) {
    payload[offset] = static_cast<std::uint8_t>((index * 31 + offset) & 0xffU);
  }
  return payload;
}

void writer_thread(int fd, std::size_t index, Workload workload) {
  if (index == 0 && workload.slow_first_ms > 0) {
    std::this_thread::sleep_for(std::chrono::milliseconds(workload.slow_first_ms));
  }
  const auto payload = payload_for(index, workload.bytes_per_client);
  for (std::size_t offset = 0; offset < payload.size();) {
    const std::size_t size = std::min(workload.chunk, payload.size() - offset);
    const ssize_t written = ::write(fd, payload.data() + offset, size);
    if (written < 0) {
      if (errno == EINTR) {
        continue;
      }
      break;
    }
    if (written == 0) {
      break;
    }
    offset += static_cast<std::size_t>(written);
    std::this_thread::sleep_for(std::chrono::microseconds(200));
  }
  ::shutdown(fd, SHUT_WR);
  ::close(fd);
}

std::vector<std::thread> start_writers(std::vector<Pair>& pairs, Workload workload) {
  std::vector<std::thread> writers;
  writers.reserve(pairs.size());
  for (std::size_t index = 0; index < pairs.size(); ++index) {
    const int fd = pairs[index].client;
    pairs[index].client = -1;
    writers.emplace_back(writer_thread, fd, index, workload);
  }
  return writers;
}

void join_writers(std::vector<std::thread>& writers) {
  for (auto& thread : writers) {
    if (thread.joinable()) {
      thread.join();
    }
  }
}

void close_pairs(std::vector<Pair>& pairs) {
  for (auto& pair : pairs) {
    close_fd(pair.server);
    close_fd(pair.client);
  }
}

ServerResult run_blocking_serial(const Workload& workload) {
  auto pairs = make_pairs(workload.clients);
  auto writers = start_writers(pairs, workload);
  const auto start = Clock::now();
  std::size_t bytes = 0;
  std::size_t read_calls = 0;
  std::vector<char> buffer(64);

  for (auto& pair : pairs) {
    while (true) {
      const ssize_t received = ::read(pair.server, buffer.data(), buffer.size());
      if (received < 0) {
        if (errno == EINTR) {
          continue;
        }
        fail_errno("blocking read failed");
      }
      if (received == 0) {
        break;
      }
      ++read_calls;
      bytes += static_cast<std::size_t>(received);
    }
  }

  const auto stop = Clock::now();
  join_writers(writers);
  close_pairs(pairs);
  const double elapsed = std::chrono::duration<double, std::milli>(stop - start).count();
  return ServerResult{"blocking-serial",
                      "none",
                      workload.clients,
                      bytes,
                      read_calls,
                      elapsed,
                      (static_cast<double>(bytes) * 1000.0) / elapsed};
}

ServerResult run_thread_per_client(const Workload& workload) {
  auto pairs = make_pairs(workload.clients);
  auto writers = start_writers(pairs, workload);
  const auto start = Clock::now();
  std::vector<std::thread> readers;
  std::vector<std::size_t> bytes_per_client(workload.clients, 0);
  std::vector<std::size_t> reads_per_client(workload.clients, 0);
  readers.reserve(workload.clients);

  for (std::size_t index = 0; index < pairs.size(); ++index) {
    const int fd = pairs[index].server;
    pairs[index].server = -1;
    readers.emplace_back([fd, index, &bytes_per_client, &reads_per_client] {
      std::vector<char> buffer(64);
      while (true) {
        const ssize_t received = ::read(fd, buffer.data(), buffer.size());
        if (received < 0) {
          if (errno == EINTR) {
            continue;
          }
          break;
        }
        if (received == 0) {
          break;
        }
        ++reads_per_client[index];
        bytes_per_client[index] += static_cast<std::size_t>(received);
      }
      ::close(fd);
    });
  }

  join_writers(writers);
  join_writers(readers);
  close_pairs(pairs);
  const auto stop = Clock::now();
  const double elapsed = std::chrono::duration<double, std::milli>(stop - start).count();
  std::size_t bytes = 0;
  std::size_t reads = 0;
  for (std::size_t value : bytes_per_client) {
    bytes += value;
  }
  for (std::size_t value : reads_per_client) {
    reads += value;
  }
  return ServerResult{"thread-per-client",
                      "pthread",
                      workload.clients,
                      bytes,
                      reads,
                      elapsed,
                      (static_cast<double>(bytes) * 1000.0) / elapsed};
}

ServerResult run_event_loop(const Workload& workload) {
  auto pairs = make_pairs(workload.clients);
  for (auto& pair : pairs) {
    set_nonblocking(pair.server);
  }
  auto writers = start_writers(pairs, workload);
  const auto start = Clock::now();
  std::size_t bytes = 0;
  std::size_t read_calls = 0;
  std::size_t open = pairs.size();
  std::vector<char> buffer(64);
  auto is_open = [&](int fd) {
    return std::any_of(pairs.begin(), pairs.end(),
                       [&](const Pair& pair) { return pair.server == fd; });
  };
  auto mark_closed = [&](int fd) {
    for (auto& pair : pairs) {
      if (pair.server == fd) {
        close_fd(pair.server);
        --open;
        return;
      }
    }
  };

#ifdef __APPLE__
  const int queue = ::kqueue();
  if (queue < 0) {
    fail_errno("kqueue failed");
  }
  std::vector<struct kevent> changes(pairs.size());
  for (std::size_t index = 0; index < pairs.size(); ++index) {
    EV_SET(&changes[index], static_cast<uintptr_t>(pairs[index].server), EVFILT_READ,
           EV_ADD | EV_ENABLE, 0, 0, nullptr);
  }
  if (::kevent(queue, changes.data(), static_cast<int>(changes.size()), nullptr, 0, nullptr) < 0) {
    fail_errno("kevent register failed");
  }
  while (open > 0) {
    struct kevent events[64];
    const int ready = ::kevent(queue, nullptr, 0, events, 64, nullptr);
    if (ready < 0) {
      if (errno == EINTR) {
        continue;
      }
      fail_errno("kevent wait failed");
    }
    for (int event_index = 0; event_index < ready; ++event_index) {
      const int fd = static_cast<int>(events[event_index].ident);
      const bool eof = (events[event_index].flags & EV_EOF) != 0;
      while (true) {
        const ssize_t received = ::read(fd, buffer.data(), buffer.size());
        if (received < 0) {
          if (errno == EAGAIN || errno == EWOULDBLOCK) {
            break;
          }
          if (errno == EINTR) {
            continue;
          }
          fail_errno("kqueue read failed");
        }
        if (received == 0) {
          mark_closed(fd);
          break;
        }
        ++read_calls;
        bytes += static_cast<std::size_t>(received);
      }
      if (eof && is_open(fd)) {
        mark_closed(fd);
      }
    }
  }
  ::close(queue);
  const std::string backend = "kqueue";
#else
  std::vector<pollfd> fds;
  fds.reserve(pairs.size());
  for (const auto& pair : pairs) {
    fds.push_back(pollfd{pair.server, POLLIN | POLLHUP, 0});
  }
  while (open > 0) {
    const int ready = ::poll(fds.data(), fds.size(), -1);
    if (ready < 0) {
      if (errno == EINTR) {
        continue;
      }
      fail_errno("poll failed");
    }
    (void)ready;
    for (auto& fd : fds) {
      if (fd.fd < 0 || (fd.revents & (POLLIN | POLLHUP)) == 0) {
        continue;
      }
      const bool hup = (fd.revents & POLLHUP) != 0;
      while (true) {
        const ssize_t received = ::read(fd.fd, buffer.data(), buffer.size());
        if (received < 0) {
          if (errno == EAGAIN || errno == EWOULDBLOCK) {
            break;
          }
          if (errno == EINTR) {
            continue;
          }
          fail_errno("poll read failed");
        }
        if (received == 0) {
          mark_closed(fd.fd);
          fd.fd = -1;
          break;
        }
        ++read_calls;
        bytes += static_cast<std::size_t>(received);
      }
      if (hup && fd.fd >= 0) {
        mark_closed(fd.fd);
        fd.fd = -1;
      }
    }
  }
  const std::string backend = "poll-portability-fallback";
#endif

  const auto stop = Clock::now();
  join_writers(writers);
  close_pairs(pairs);
  const double elapsed = std::chrono::duration<double, std::milli>(stop - start).count();
  return ServerResult{"event-loop",
                      backend,
                      workload.clients,
                      bytes,
                      read_calls,
                      elapsed,
                      (static_cast<double>(bytes) * 1000.0) / elapsed};
}

void print_result(const ServerResult& result) {
  std::cout << "{\"mode\":\"" << bts::json_escape(result.mode) << "\",\"event_backend\":\""
            << bts::json_escape(result.event_backend) << "\",\"clients\":" << result.clients
            << ",\"bytes\":" << result.bytes << ",\"read_calls\":" << result.read_calls
            << ",\"elapsed_ms\":" << result.elapsed_ms
            << ",\"throughput_bytes_per_sec\":" << result.throughput_bytes_per_sec << "}";
}

}  // namespace

int main(int argc, char** argv) {
  std::signal(SIGPIPE, SIG_IGN);
  const Workload workload{bts::size_argument(argc, argv, "--clients", 32),
                          bts::size_argument(argc, argv, "--bytes", 128),
                          bts::size_argument(argc, argv, "--chunk", 16),
                          static_cast<int>(bts::size_argument(argc, argv, "--slow-first-ms", 20))};

  const auto blocking = run_blocking_serial(workload);
  const auto threaded = run_thread_per_client(workload);
  const auto event_loop = run_event_loop(workload);

  std::cout << "{\"lab\":\"event-loop-reality\",\"workload\":{\"clients\":" << workload.clients
            << ",\"bytes_per_client\":" << workload.bytes_per_client
            << ",\"chunk\":" << workload.chunk << ",\"slow_first_ms\":" << workload.slow_first_ms
            << "},\"results\":[";
  print_result(blocking);
  std::cout << ',';
  print_result(threaded);
  std::cout << ',';
  print_result(event_loop);
  std::cout << "],\"interpretation\":\"event loop uses kqueue on macOS and poll fallback on CI; "
               "socketpair workload models partial reads and idle/slow peer cost without claiming "
               "internet throughput\"}\n";
  return 0;
}

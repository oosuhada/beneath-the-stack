#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <unistd.h>

#include <atomic>
#include <cerrno>
#include <chrono>
#include <condition_variable>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <mutex>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

#include "bts/benchmark.hpp"
#include "bts/cli.hpp"
#include "bts/http.hpp"
#include "bts/json.hpp"

namespace {

enum class HandlerMode { kSerial, kThreadPerConnection };

void close_socket(int fd) {
  if (fd >= 0) {
    ::close(fd);
  }
}

void send_all(int fd, const std::string& payload) {
  std::size_t sent = 0;
  while (sent < payload.size()) {
#if defined(__linux__)
    const ssize_t result = ::send(fd, payload.data() + sent, payload.size() - sent, MSG_NOSIGNAL);
#else
    const ssize_t result = ::send(fd, payload.data() + sent, payload.size() - sent, 0);
#endif
    if (result <= 0) {
      throw std::runtime_error("send failed: " + std::string(std::strerror(errno)));
    }
    sent += static_cast<std::size_t>(result);
  }
}

class LoopbackHttpServer {
 public:
  explicit LoopbackHttpServer(HandlerMode mode = HandlerMode::kThreadPerConnection) : mode_(mode) {
    listen_fd_ = ::socket(AF_INET, SOCK_STREAM, 0);
    if (listen_fd_ < 0) {
      throw std::runtime_error("socket failed");
    }
#if defined(__APPLE__)
    int no_sigpipe = 1;
    ::setsockopt(listen_fd_, SOL_SOCKET, SO_NOSIGPIPE, &no_sigpipe, sizeof(no_sigpipe));
#endif
    int reuse = 1;
    ::setsockopt(listen_fd_, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse));

    sockaddr_in address{};
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    address.sin_port = htons(0);
    if (::bind(listen_fd_, reinterpret_cast<sockaddr*>(&address), sizeof(address)) != 0) {
      close_socket(listen_fd_);
      throw std::runtime_error("bind failed");
    }
    if (::listen(listen_fd_, 64) != 0) {
      close_socket(listen_fd_);
      throw std::runtime_error("listen failed");
    }

    socklen_t length = sizeof(address);
    if (::getsockname(listen_fd_, reinterpret_cast<sockaddr*>(&address), &length) != 0) {
      close_socket(listen_fd_);
      throw std::runtime_error("getsockname failed");
    }
    port_ = ntohs(address.sin_port);
    accept_thread_ = std::thread([this] { accept_loop(); });
  }

  LoopbackHttpServer(const LoopbackHttpServer&) = delete;
  LoopbackHttpServer& operator=(const LoopbackHttpServer&) = delete;

  ~LoopbackHttpServer() {
    stopping_.store(true, std::memory_order_release);
    if (listen_fd_ >= 0) {
      ::shutdown(listen_fd_, SHUT_RDWR);
      close_socket(listen_fd_);
      listen_fd_ = -1;
    }
    if (accept_thread_.joinable()) {
      accept_thread_.join();
    }
    std::unique_lock<std::mutex> lock(worker_mutex_);
    worker_cv_.wait(lock, [this] { return active_workers_ == 0; });
  }

  std::uint16_t port() const { return port_; }
  std::uint64_t request_count() const { return requests_.load(std::memory_order_relaxed); }
  std::uint64_t accepted_connections() const { return accepted_.load(std::memory_order_relaxed); }
  std::uint64_t bytes_received() const { return bytes_received_.load(std::memory_order_relaxed); }
  std::uint64_t bytes_sent() const { return bytes_sent_.load(std::memory_order_relaxed); }

 private:
  void accept_loop() {
    while (!stopping_.load(std::memory_order_acquire)) {
      const int client = ::accept(listen_fd_, nullptr, nullptr);
      if (client < 0) {
        if (stopping_.load(std::memory_order_acquire)) {
          break;
        }
        continue;
      }
      accepted_.fetch_add(1, std::memory_order_relaxed);
#if defined(__APPLE__)
      int no_sigpipe = 1;
      ::setsockopt(client, SOL_SOCKET, SO_NOSIGPIPE, &no_sigpipe, sizeof(no_sigpipe));
#endif
      if (mode_ == HandlerMode::kSerial) {
        handle_connection(client);
        continue;
      }
      {
        std::lock_guard<std::mutex> lock(worker_mutex_);
        ++active_workers_;
      }
      std::thread([this, client] {
        handle_connection(client);
        {
          std::lock_guard<std::mutex> lock(worker_mutex_);
          --active_workers_;
        }
        worker_cv_.notify_all();
      }).detach();
    }
  }

  void handle_connection(int client) noexcept {
    try {
      std::string buffer;
      char chunk[4096];
      while (true) {
        const std::size_t header_end = buffer.find("\r\n\r\n");
        if (header_end == std::string::npos) {
          const ssize_t received = ::recv(client, chunk, sizeof(chunk), 0);
          if (received <= 0) {
            break;
          }
          bytes_received_.fetch_add(static_cast<std::uint64_t>(received),
                                    std::memory_order_relaxed);
          buffer.append(chunk, static_cast<std::size_t>(received));
          continue;
        }

        const std::string raw_request = buffer.substr(0, header_end + 4);
        buffer.erase(0, header_end + 4);
        const bts::HttpRequest request = bts::parse_http_request(raw_request);
        const bool close_after = bts::http_connection_close(request);
        if (request.target == "/slow") {
          std::this_thread::sleep_for(std::chrono::milliseconds(30));
        }
        requests_.fetch_add(1, std::memory_order_relaxed);
        const std::string connection = close_after ? "close" : "keep-alive";
        const std::string body = "ok\n";
        const std::string response =
            "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: " +
            std::to_string(body.size()) + "\r\nConnection: " + connection + "\r\n\r\n" + body;
        send_all(client, response);
        bytes_sent_.fetch_add(response.size(), std::memory_order_relaxed);
        if (close_after) {
          break;
        }
      }
    } catch (const std::exception&) {
    }
    ::shutdown(client, SHUT_RDWR);
    close_socket(client);
  }

  int listen_fd_ = -1;
  HandlerMode mode_;
  std::uint16_t port_ = 0;
  std::atomic<bool> stopping_{false};
  std::atomic<std::uint64_t> requests_{0};
  std::atomic<std::uint64_t> accepted_{0};
  std::atomic<std::uint64_t> bytes_received_{0};
  std::atomic<std::uint64_t> bytes_sent_{0};
  std::thread accept_thread_;
  mutable std::mutex worker_mutex_;
  std::condition_variable worker_cv_;
  std::size_t active_workers_ = 0;
};

int connect_loopback(std::uint16_t port) {
  const int fd = ::socket(AF_INET, SOCK_STREAM, 0);
  if (fd < 0) {
    throw std::runtime_error("client socket failed");
  }
#if defined(__APPLE__)
  int no_sigpipe = 1;
  ::setsockopt(fd, SOL_SOCKET, SO_NOSIGPIPE, &no_sigpipe, sizeof(no_sigpipe));
#endif
  sockaddr_in address{};
  address.sin_family = AF_INET;
  address.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  address.sin_port = htons(port);
  if (::connect(fd, reinterpret_cast<sockaddr*>(&address), sizeof(address)) != 0) {
    close_socket(fd);
    throw std::runtime_error("connect failed");
  }
  return fd;
}

void send_request(int fd, const std::string& target, bool close_after) {
  const std::string connection = close_after ? "close" : "keep-alive";
  send_all(fd, "GET " + target + " HTTP/1.1\r\nHost: 127.0.0.1\r\nConnection: " + connection +
                   "\r\n\r\n");
}

void read_response(int fd) {
  std::string response;
  char chunk[2048];
  std::size_t header_end = std::string::npos;
  std::size_t content_length = 0;
  while (true) {
    if (header_end != std::string::npos && response.size() >= header_end + 4 + content_length) {
      return;
    }
    const ssize_t received = ::recv(fd, chunk, sizeof(chunk), 0);
    if (received <= 0) {
      throw std::runtime_error("connection closed before full HTTP response");
    }
    response.append(chunk, static_cast<std::size_t>(received));
    if (header_end == std::string::npos) {
      header_end = response.find("\r\n\r\n");
      if (header_end != std::string::npos) {
        const std::string marker = "Content-Length: ";
        const std::size_t length_start = response.find(marker);
        if (length_start == std::string::npos) {
          throw std::runtime_error("missing Content-Length");
        }
        const std::size_t value_start = length_start + marker.size();
        const std::size_t value_end = response.find("\r\n", value_start);
        content_length = static_cast<std::size_t>(
            std::stoull(response.substr(value_start, value_end - value_start)));
      }
    }
  }
}

void run_new_connections(std::uint16_t port, std::size_t requests) {
  for (std::size_t i = 0; i < requests; ++i) {
    const int fd = connect_loopback(port);
    send_request(fd, "/health", true);
    read_response(fd);
    close_socket(fd);
  }
}

void run_keep_alive(std::uint16_t port, std::size_t requests) {
  const int fd = connect_loopback(port);
  for (std::size_t i = 0; i < requests; ++i) {
    send_request(fd, "/health", i + 1 == requests);
    read_response(fd);
  }
  close_socket(fd);
}

void run_connection_pool(std::uint16_t port, std::size_t pool_size, std::size_t requests) {
  std::vector<int> connections;
  connections.reserve(pool_size);
  for (std::size_t i = 0; i < pool_size; ++i) {
    connections.push_back(connect_loopback(port));
  }
  for (std::size_t i = 0; i < requests; ++i) {
    const int fd = connections[i % connections.size()];
    send_request(fd, "/health", false);
    read_response(fd);
  }
  for (const int fd : connections) {
    ::shutdown(fd, SHUT_RDWR);
    close_socket(fd);
  }
}

bool timeout_is_observable(std::uint16_t port) {
  const int fd = connect_loopback(port);
  timeval timeout{};
  timeout.tv_usec = 5000;
  if (::setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout)) != 0) {
    close_socket(fd);
    throw std::runtime_error("SO_RCVTIMEO setup failed");
  }
  send_request(fd, "/slow", true);
  char byte = 0;
  const ssize_t received = ::recv(fd, &byte, 1, 0);
  const int saved_errno = errno;
  close_socket(fd);
  return received < 0 && (saved_errno == EAGAIN || saved_errno == EWOULDBLOCK);
}

void run_parallel(std::uint16_t port, std::size_t clients, std::size_t requests_per_client) {
  std::vector<std::thread> workers;
  workers.reserve(clients);
  for (std::size_t i = 0; i < clients; ++i) {
    workers.emplace_back([=] { run_keep_alive(port, requests_per_client); });
  }
  for (auto& worker : workers) {
    worker.join();
  }
}

void run_slow_parallel_new_connections(std::uint16_t port, std::size_t clients) {
  std::vector<std::thread> workers;
  workers.reserve(clients);
  for (std::size_t i = 0; i < clients; ++i) {
    workers.emplace_back([=] {
      const int fd = connect_loopback(port);
      send_request(fd, "/slow", true);
      read_response(fd);
      close_socket(fd);
    });
  }
  for (auto& worker : workers) {
    worker.join();
  }
}

}  // namespace

int main(int argc, char** argv) {
  const std::size_t requests = bts::size_argument(argc, argv, "--requests", 80);
  const std::size_t clients = bts::size_argument(argc, argv, "--clients", 4);
  const std::size_t warmup = bts::size_argument(argc, argv, "--warmup", 2);
  const std::size_t repetitions = bts::size_argument(argc, argv, "--repetitions", 8);
  LoopbackHttpServer server;

  const auto new_connection = bts::benchmark("new-tcp-connection-per-request", warmup, repetitions,
                                             [&] { run_new_connections(server.port(), requests); });
  const auto keep_alive = bts::benchmark("http-keep-alive", warmup, repetitions,
                                         [&] { run_keep_alive(server.port(), requests); });
  const std::size_t pool_size = std::max<std::size_t>(1, clients);
  const auto pool = bts::benchmark("connection-pool-reuse", warmup, repetitions, [&] {
    run_connection_pool(server.port(), pool_size, requests);
  });
  const std::size_t parallel_requests = std::max<std::size_t>(1, requests / clients);
  const auto concurrent = bts::benchmark("concurrent-keep-alive", warmup, repetitions, [&] {
    run_parallel(server.port(), clients, parallel_requests);
  });
  const auto threaded_slow =
      bts::benchmark("thread-per-client-slow-requests", warmup, repetitions,
                     [&] { run_slow_parallel_new_connections(server.port(), clients); });
  const bool timeout_observed = timeout_is_observable(server.port());
  LoopbackHttpServer serial_server(HandlerMode::kSerial);
  const auto serial_slow =
      bts::benchmark("serial-blocking-slow-requests", warmup, repetitions,
                     [&] { run_slow_parallel_new_connections(serial_server.port(), clients); });

  std::cout << "{\"lab\":\"raw-http\",\"transport\":\"POSIX TCP loopback + hand-written HTTP/1.1 "
               "framing\",\"requests_per_run\":"
            << requests << ",\"concurrent_clients\":" << clients << ",\"pool_size\":" << pool_size
            << ",\"server_port\":" << server.port()
            << ",\"parser\":\"request-line + normalized headers\",\"timeout_observed\":"
            << (timeout_observed ? "true" : "false")
            << ",\"transport_counters\":{\"threaded\":{\"accepted_connections\":"
            << server.accepted_connections() << ",\"bytes_received\":" << server.bytes_received()
            << ",\"bytes_sent\":" << server.bytes_sent()
            << "},\"serial\":{\"accepted_connections\":" << serial_server.accepted_connections()
            << ",\"bytes_received\":" << serial_server.bytes_received()
            << ",\"bytes_sent\":" << serial_server.bytes_sent() << "}},\"new_connection\":";
  bts::write_stats_json(std::cout, new_connection);
  std::cout << ",\"keep_alive\":";
  bts::write_stats_json(std::cout, keep_alive);
  std::cout << ",\"connection_pool\":";
  bts::write_stats_json(std::cout, pool);
  std::cout << ",\"concurrent_keep_alive\":";
  bts::write_stats_json(std::cout, concurrent);
  std::cout << ",\"thread_per_client_slow\":";
  bts::write_stats_json(std::cout, threaded_slow);
  std::cout << ",\"serial_blocking_slow\":";
  bts::write_stats_json(std::cout, serial_slow);
  std::cout << ",\"requests_served\":" << server.request_count() << "}\n";
  return 0;
}

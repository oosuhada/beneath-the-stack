#pragma once

#include <algorithm>
#include <cctype>
#include <optional>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace bts {

struct HttpRequest {
  std::string method;
  std::string target;
  std::string version;
  std::vector<std::pair<std::string, std::string>> headers;
};

inline std::string trim_ascii(std::string value) {
  while (!value.empty() && (value.front() == ' ' || value.front() == '\t')) {
    value.erase(value.begin());
  }
  while (!value.empty() && (value.back() == ' ' || value.back() == '\t')) {
    value.pop_back();
  }
  return value;
}

inline std::string lowercase_ascii(std::string value) {
  std::transform(value.begin(), value.end(), value.begin(),
                 [](unsigned char ch) { return static_cast<char>(std::tolower(ch)); });
  return value;
}

inline HttpRequest parse_http_request(const std::string& raw) {
  const std::size_t header_end = raw.find("\r\n\r\n");
  if (header_end == std::string::npos) {
    throw std::invalid_argument("incomplete HTTP header block");
  }

  const std::size_t first_line_end = raw.find("\r\n");
  if (first_line_end == std::string::npos) {
    throw std::invalid_argument("missing HTTP request line terminator");
  }
  const std::string request_line = raw.substr(0, first_line_end);
  const std::size_t first_space = request_line.find(' ');
  const std::size_t second_space = request_line.find(' ', first_space + 1);
  if (first_space == std::string::npos || second_space == std::string::npos ||
      request_line.find(' ', second_space + 1) != std::string::npos) {
    throw std::invalid_argument("malformed HTTP request line");
  }

  HttpRequest request;
  request.method = request_line.substr(0, first_space);
  request.target = request_line.substr(first_space + 1, second_space - first_space - 1);
  request.version = request_line.substr(second_space + 1);
  if (request.method.empty() || request.target.empty() || request.version != "HTTP/1.1") {
    throw std::invalid_argument("unsupported HTTP request line");
  }

  std::size_t cursor = first_line_end + 2;
  while (cursor < header_end) {
    const std::size_t line_end = raw.find("\r\n", cursor);
    if (line_end == std::string::npos || line_end > header_end) {
      throw std::invalid_argument("malformed HTTP header line");
    }
    const std::string line = raw.substr(cursor, line_end - cursor);
    const std::size_t colon = line.find(':');
    if (colon == std::string::npos || colon == 0) {
      throw std::invalid_argument("malformed HTTP header");
    }
    request.headers.emplace_back(lowercase_ascii(trim_ascii(line.substr(0, colon))),
                                 trim_ascii(line.substr(colon + 1)));
    cursor = line_end + 2;
  }
  return request;
}

inline std::optional<std::string> http_header(const HttpRequest& request, const std::string& name) {
  const std::string normalized = lowercase_ascii(name);
  for (const auto& [key, value] : request.headers) {
    if (key == normalized) {
      return value;
    }
  }
  return std::nullopt;
}

inline bool http_connection_close(const HttpRequest& request) {
  const auto value = http_header(request, "connection");
  return value.has_value() && lowercase_ascii(*value) == "close";
}

}  // namespace bts

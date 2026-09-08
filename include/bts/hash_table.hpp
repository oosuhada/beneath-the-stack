#pragma once

#include <cstddef>
#include <cstdint>
#include <optional>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace bts {

class Fnv1aHash {
 public:
  std::size_t operator()(const std::string& key) const {
    std::uint64_t hash = 1469598103934665603ULL;
    for (const unsigned char byte : key) {
      hash ^= byte;
      hash *= 1099511628211ULL;
    }
    return static_cast<std::size_t>(hash);
  }
};

template <typename Value, typename Hasher = Fnv1aHash>
class ChainedHashTable {
 public:
  explicit ChainedHashTable(std::size_t bucket_count = 16, double max_load_factor = 0.75)
      : buckets_(normalize_capacity(bucket_count)), max_load_factor_(max_load_factor) {
    if (max_load_factor_ <= 0.0) {
      throw std::invalid_argument("max load factor must be positive");
    }
  }

  void insert(const std::string& key, const Value& value) {
    auto& bucket = buckets_[index_for(key, buckets_.size())];
    for (auto& entry : bucket) {
      if (entry.first == key) {
        entry.second = value;
        return;
      }
    }
    bucket.emplace_back(key, value);
    ++size_;
    if (load_factor() > max_load_factor_) {
      rehash(buckets_.size() * 2);
    }
  }

  std::optional<Value> find(const std::string& key) const {
    const auto& bucket = buckets_[index_for(key, buckets_.size())];
    for (const auto& [stored_key, stored_value] : bucket) {
      if (stored_key == key) {
        return stored_value;
      }
    }
    return std::nullopt;
  }

  std::size_t size() const { return size_; }
  std::size_t bucket_count() const { return buckets_.size(); }
  double load_factor() const { return static_cast<double>(size_) / buckets_.size(); }

  std::vector<std::size_t> bucket_sizes() const {
    std::vector<std::size_t> sizes;
    sizes.reserve(buckets_.size());
    for (const auto& bucket : buckets_) {
      sizes.push_back(bucket.size());
    }
    return sizes;
  }

 private:
  using Entry = std::pair<std::string, Value>;

  static std::size_t normalize_capacity(std::size_t capacity) {
    std::size_t result = 8;
    while (result < capacity) {
      result *= 2;
    }
    return result;
  }

  std::size_t index_for(const std::string& key, std::size_t capacity) const {
    return hasher_(key) & (capacity - 1);
  }

  void rehash(std::size_t new_capacity) {
    std::vector<std::vector<Entry>> next(normalize_capacity(new_capacity));
    for (auto& bucket : buckets_) {
      for (auto& entry : bucket) {
        next[index_for(entry.first, next.size())].push_back(std::move(entry));
      }
    }
    buckets_ = std::move(next);
  }

  std::vector<std::vector<Entry>> buckets_;
  std::size_t size_ = 0;
  double max_load_factor_ = 0.75;
  Hasher hasher_;
};

template <typename Value, typename Hasher = Fnv1aHash>
class LinearProbeHashTable {
 public:
  explicit LinearProbeHashTable(std::size_t capacity = 16, double max_load_factor = 0.70)
      : slots_(normalize_capacity(capacity)), max_load_factor_(max_load_factor) {
    if (max_load_factor_ <= 0.0 || max_load_factor_ >= 1.0) {
      throw std::invalid_argument("open-addressing load factor must be between 0 and 1");
    }
  }

  void insert(const std::string& key, const Value& value) {
    if ((static_cast<double>(size_ + 1) / slots_.size()) > max_load_factor_) {
      rehash(slots_.size() * 2);
    }
    insert_without_resize(key, value);
  }

  std::optional<Value> find(const std::string& key) const {
    std::size_t index = index_for(key, slots_.size());
    for (std::size_t probe = 0; probe < slots_.size(); ++probe) {
      const auto& slot = slots_[index];
      if (!slot.has_value()) {
        return std::nullopt;
      }
      if (slot->key == key) {
        return slot->value;
      }
      index = (index + 1) & (slots_.size() - 1);
    }
    return std::nullopt;
  }

  std::size_t size() const { return size_; }
  std::size_t capacity() const { return slots_.size(); }
  double load_factor() const { return static_cast<double>(size_) / slots_.size(); }

  std::size_t longest_cluster() const {
    std::size_t longest = 0;
    std::size_t current = 0;
    for (std::size_t i = 0; i < slots_.size() * 2; ++i) {
      if (slots_[i % slots_.size()].has_value()) {
        ++current;
        longest = std::max(longest, current);
      } else {
        current = 0;
      }
      if (i >= slots_.size() && current == 0) {
        break;
      }
    }
    return std::min(longest, slots_.size());
  }

 private:
  struct Slot {
    std::string key;
    Value value;
  };

  static std::size_t normalize_capacity(std::size_t capacity) {
    std::size_t result = 8;
    while (result < capacity) {
      result *= 2;
    }
    return result;
  }

  std::size_t index_for(const std::string& key, std::size_t capacity) const {
    return hasher_(key) & (capacity - 1);
  }

  void insert_without_resize(const std::string& key, const Value& value) {
    std::size_t index = index_for(key, slots_.size());
    for (std::size_t probe = 0; probe < slots_.size(); ++probe) {
      auto& slot = slots_[index];
      if (!slot.has_value()) {
        slot = Slot{key, value};
        ++size_;
        return;
      }
      if (slot->key == key) {
        slot->value = value;
        return;
      }
      index = (index + 1) & (slots_.size() - 1);
    }
    throw std::runtime_error("hash table is unexpectedly full");
  }

  void rehash(std::size_t new_capacity) {
    auto previous = std::move(slots_);
    slots_.assign(normalize_capacity(new_capacity), std::nullopt);
    size_ = 0;
    for (const auto& slot : previous) {
      if (slot.has_value()) {
        insert_without_resize(slot->key, slot->value);
      }
    }
  }

  std::vector<std::optional<Slot>> slots_;
  std::size_t size_ = 0;
  double max_load_factor_ = 0.70;
  Hasher hasher_;
};

}  // namespace bts

#pragma once

#include <cstddef>
#include <functional>
#include <stdexcept>
#include <utility>
#include <vector>

namespace bts {

template <typename T, typename Compare = std::less<T>>
class BinaryMinHeap {
 public:
  bool empty() const { return data_.empty(); }
  std::size_t size() const { return data_.size(); }

  const T& top() const {
    if (data_.empty()) {
      throw std::out_of_range("heap is empty");
    }
    return data_.front();
  }

  void push(const T& value) {
    data_.push_back(value);
    sift_up(data_.size() - 1);
  }

  void push(T&& value) {
    data_.push_back(std::move(value));
    sift_up(data_.size() - 1);
  }

  T pop() {
    if (data_.empty()) {
      throw std::out_of_range("heap is empty");
    }
    T result = std::move(data_.front());
    if (data_.size() == 1) {
      data_.pop_back();
      return result;
    }
    data_.front() = std::move(data_.back());
    data_.pop_back();
    sift_down(0);
    return result;
  }

 private:
  bool higher_priority(const T& left, const T& right) const { return compare_(left, right); }

  void sift_up(std::size_t index) {
    while (index > 0) {
      const std::size_t parent = (index - 1) / 2;
      if (!higher_priority(data_[index], data_[parent])) {
        break;
      }
      std::swap(data_[index], data_[parent]);
      index = parent;
    }
  }

  void sift_down(std::size_t index) {
    while (true) {
      const std::size_t left = index * 2 + 1;
      const std::size_t right = left + 1;
      std::size_t best = index;
      if (left < data_.size() && higher_priority(data_[left], data_[best])) {
        best = left;
      }
      if (right < data_.size() && higher_priority(data_[right], data_[best])) {
        best = right;
      }
      if (best == index) {
        return;
      }
      std::swap(data_[index], data_[best]);
      index = best;
    }
  }

  std::vector<T> data_;
  Compare compare_;
};

}  // namespace bts

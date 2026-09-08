#pragma once

#include <array>
#include <cstddef>
#include <memory>
#include <optional>
#include <stdexcept>
#include <string>
#include <type_traits>
#include <utility>

namespace bts {

template <typename T>
class DynamicArray {
 public:
  DynamicArray() = default;

  DynamicArray(const DynamicArray& other) { copy_from(other); }

  DynamicArray& operator=(const DynamicArray& other) {
    if (this != &other) {
      DynamicArray copy(other);
      swap(copy);
    }
    return *this;
  }

  DynamicArray(DynamicArray&& other) noexcept { move_from(std::move(other)); }

  DynamicArray& operator=(DynamicArray&& other) noexcept {
    if (this != &other) {
      destroy_all();
      move_from(std::move(other));
    }
    return *this;
  }

  ~DynamicArray() { destroy_all(); }

  void push_back(const T& value) { emplace_back(value); }
  void push_back(T&& value) { emplace_back(std::move(value)); }

  template <typename... Args>
  T& emplace_back(Args&&... args) {
    ensure_capacity(size_ + 1);
    std::allocator_traits<Allocator>::construct(allocator_, data_ + size_,
                                                std::forward<Args>(args)...);
    ++size_;
    return data_[size_ - 1];
  }

  T pop_back() {
    if (size_ == 0) {
      throw std::out_of_range("dynamic array is empty");
    }
    --size_;
    T value = std::move(data_[size_]);
    std::allocator_traits<Allocator>::destroy(allocator_, data_ + size_);
    return value;
  }

  void reserve(std::size_t requested) {
    if (requested > capacity_) {
      reallocate(requested);
    }
  }

  T& operator[](std::size_t index) { return data_[index]; }
  const T& operator[](std::size_t index) const { return data_[index]; }

  T& at(std::size_t index) {
    if (index >= size_) {
      throw std::out_of_range("dynamic array index out of range");
    }
    return data_[index];
  }

  const T& at(std::size_t index) const {
    if (index >= size_) {
      throw std::out_of_range("dynamic array index out of range");
    }
    return data_[index];
  }

  T* begin() { return data_; }
  T* end() { return data_ + size_; }
  const T* begin() const { return data_; }
  const T* end() const { return data_ + size_; }

  std::size_t size() const { return size_; }
  std::size_t capacity() const { return capacity_; }
  bool empty() const { return size_ == 0; }

  void swap(DynamicArray& other) noexcept {
    std::swap(data_, other.data_);
    std::swap(size_, other.size_);
    std::swap(capacity_, other.capacity_);
  }

 private:
  using Allocator = std::allocator<T>;

  void ensure_capacity(std::size_t requested) {
    if (requested <= capacity_) {
      return;
    }
    const std::size_t next = capacity_ == 0 ? 8 : capacity_ * 2;
    reallocate(next < requested ? requested : next);
  }

  void reallocate(std::size_t next_capacity) {
    T* next = std::allocator_traits<Allocator>::allocate(allocator_, next_capacity);
    std::size_t constructed = 0;
    try {
      for (; constructed < size_; ++constructed) {
        std::allocator_traits<Allocator>::construct(allocator_, next + constructed,
                                                    std::move_if_noexcept(data_[constructed]));
      }
    } catch (...) {
      for (std::size_t i = 0; i < constructed; ++i) {
        std::allocator_traits<Allocator>::destroy(allocator_, next + i);
      }
      std::allocator_traits<Allocator>::deallocate(allocator_, next, next_capacity);
      throw;
    }

    for (std::size_t i = 0; i < size_; ++i) {
      std::allocator_traits<Allocator>::destroy(allocator_, data_ + i);
    }
    if (data_ != nullptr) {
      std::allocator_traits<Allocator>::deallocate(allocator_, data_, capacity_);
    }
    data_ = next;
    capacity_ = next_capacity;
  }

  void destroy_all() noexcept {
    for (std::size_t i = 0; i < size_; ++i) {
      std::allocator_traits<Allocator>::destroy(allocator_, data_ + i);
    }
    if (data_ != nullptr) {
      std::allocator_traits<Allocator>::deallocate(allocator_, data_, capacity_);
    }
    data_ = nullptr;
    size_ = 0;
    capacity_ = 0;
  }

  void copy_from(const DynamicArray& other) {
    if (other.capacity_ == 0) {
      return;
    }
    data_ = std::allocator_traits<Allocator>::allocate(allocator_, other.capacity_);
    capacity_ = other.capacity_;
    try {
      for (; size_ < other.size_; ++size_) {
        std::allocator_traits<Allocator>::construct(allocator_, data_ + size_, other.data_[size_]);
      }
    } catch (...) {
      destroy_all();
      throw;
    }
  }

  void move_from(DynamicArray&& other) noexcept {
    data_ = other.data_;
    size_ = other.size_;
    capacity_ = other.capacity_;
    other.data_ = nullptr;
    other.size_ = 0;
    other.capacity_ = 0;
  }

  Allocator allocator_;
  T* data_ = nullptr;
  std::size_t size_ = 0;
  std::size_t capacity_ = 0;
};

template <typename T>
class SinglyLinkedList {
 public:
  SinglyLinkedList() = default;
  SinglyLinkedList(const SinglyLinkedList&) = delete;
  SinglyLinkedList& operator=(const SinglyLinkedList&) = delete;

  SinglyLinkedList(SinglyLinkedList&& other) noexcept { move_from(std::move(other)); }
  SinglyLinkedList& operator=(SinglyLinkedList&& other) noexcept {
    if (this != &other) {
      clear();
      move_from(std::move(other));
    }
    return *this;
  }

  ~SinglyLinkedList() { clear(); }

  void push_front(const T& value) {
    Node* node = new Node{value, head_};
    head_ = node;
    if (tail_ == nullptr) {
      tail_ = node;
    }
    ++size_;
  }

  void push_back(const T& value) {
    Node* node = new Node{value, nullptr};
    if (tail_ == nullptr) {
      head_ = tail_ = node;
    } else {
      tail_->next = node;
      tail_ = node;
    }
    ++size_;
  }

  T pop_front() {
    if (head_ == nullptr) {
      throw std::out_of_range("linked list is empty");
    }
    Node* old = head_;
    T value = std::move(old->value);
    head_ = old->next;
    delete old;
    --size_;
    if (head_ == nullptr) {
      tail_ = nullptr;
    }
    return value;
  }

  bool contains(const T& value) const {
    for (Node* node = head_; node != nullptr; node = node->next) {
      if (node->value == value) {
        return true;
      }
    }
    return false;
  }

  template <typename Function>
  void for_each(Function&& function) const {
    for (Node* node = head_; node != nullptr; node = node->next) {
      function(node->value);
    }
  }

  std::size_t size() const { return size_; }
  bool empty() const { return size_ == 0; }

 private:
  struct Node {
    T value;
    Node* next;
  };

  void clear() noexcept {
    while (head_ != nullptr) {
      Node* next = head_->next;
      delete head_;
      head_ = next;
    }
    tail_ = nullptr;
    size_ = 0;
  }

  void move_from(SinglyLinkedList&& other) noexcept {
    head_ = other.head_;
    tail_ = other.tail_;
    size_ = other.size_;
    other.head_ = nullptr;
    other.tail_ = nullptr;
    other.size_ = 0;
  }

  Node* head_ = nullptr;
  Node* tail_ = nullptr;
  std::size_t size_ = 0;
};

template <typename T>
class ArrayStack {
 public:
  void push(const T& value) { values_.push_back(value); }
  void push(T&& value) { values_.push_back(std::move(value)); }
  T pop() { return values_.pop_back(); }
  const T& top() const {
    if (values_.empty()) {
      throw std::out_of_range("stack is empty");
    }
    return values_[values_.size() - 1];
  }
  bool empty() const { return values_.empty(); }
  std::size_t size() const { return values_.size(); }

 private:
  DynamicArray<T> values_;
};

template <typename T>
class LinkedQueue {
 public:
  LinkedQueue() = default;
  LinkedQueue(const LinkedQueue&) = delete;
  LinkedQueue& operator=(const LinkedQueue&) = delete;
  ~LinkedQueue() { clear(); }

  void push(const T& value) {
    Node* node = new Node{value, nullptr};
    if (tail_ == nullptr) {
      head_ = tail_ = node;
    } else {
      tail_->next = node;
      tail_ = node;
    }
    ++size_;
  }

  T pop() {
    if (head_ == nullptr) {
      throw std::out_of_range("queue is empty");
    }
    Node* node = head_;
    T value = std::move(node->value);
    head_ = node->next;
    delete node;
    --size_;
    if (head_ == nullptr) {
      tail_ = nullptr;
    }
    return value;
  }

  const T& front() const {
    if (head_ == nullptr) {
      throw std::out_of_range("queue is empty");
    }
    return head_->value;
  }

  bool empty() const { return size_ == 0; }
  std::size_t size() const { return size_; }

 private:
  struct Node {
    T value;
    Node* next;
  };

  void clear() noexcept {
    while (head_ != nullptr) {
      Node* next = head_->next;
      delete head_;
      head_ = next;
    }
    tail_ = nullptr;
    size_ = 0;
  }

  Node* head_ = nullptr;
  Node* tail_ = nullptr;
  std::size_t size_ = 0;
};

template <typename T>
class BinarySearchTree {
 public:
  void insert(const T& value) { insert_node(root_, value); }

  bool contains(const T& value) const {
    const Node* node = root_.get();
    while (node != nullptr) {
      if (value == node->value) {
        return true;
      }
      node = value < node->value ? node->left.get() : node->right.get();
    }
    return false;
  }

  std::size_t size() const { return size_; }
  std::size_t height() const { return height_of(root_.get()); }

  DynamicArray<T> in_order() const {
    DynamicArray<T> result;
    result.reserve(size_);
    visit_in_order(root_.get(), result);
    return result;
  }

 private:
  struct Node {
    explicit Node(const T& node_value) : value(node_value) {}
    T value;
    std::unique_ptr<Node> left;
    std::unique_ptr<Node> right;
  };

  void insert_node(std::unique_ptr<Node>& node, const T& value) {
    if (!node) {
      node = std::make_unique<Node>(value);
      ++size_;
      return;
    }
    if (value < node->value) {
      insert_node(node->left, value);
    } else if (node->value < value) {
      insert_node(node->right, value);
    }
  }

  static std::size_t height_of(const Node* node) {
    if (node == nullptr) {
      return 0;
    }
    const std::size_t left = height_of(node->left.get());
    const std::size_t right = height_of(node->right.get());
    return 1 + (left > right ? left : right);
  }

  static void visit_in_order(const Node* node, DynamicArray<T>& output) {
    if (node == nullptr) {
      return;
    }
    visit_in_order(node->left.get(), output);
    output.push_back(node->value);
    visit_in_order(node->right.get(), output);
  }

  std::unique_ptr<Node> root_;
  std::size_t size_ = 0;
};

class Trie {
 public:
  void insert(const std::string& word) {
    Node* node = &root_;
    for (const char ch : word) {
      const std::size_t index = character_index(ch);
      if (!node->children[index]) {
        node->children[index] = std::make_unique<Node>();
      }
      node = node->children[index].get();
    }
    if (!node->terminal) {
      node->terminal = true;
      ++size_;
    }
  }

  bool contains(const std::string& word) const {
    const Node* node = descend(word);
    return node != nullptr && node->terminal;
  }

  bool starts_with(const std::string& prefix) const { return descend(prefix) != nullptr; }
  std::size_t size() const { return size_; }

 private:
  struct Node {
    std::array<std::unique_ptr<Node>, 26> children{};
    bool terminal = false;
  };

  static std::size_t character_index(char ch) {
    if (ch < 'a' || ch > 'z') {
      throw std::invalid_argument("trie accepts lowercase ascii letters only");
    }
    return static_cast<std::size_t>(ch - 'a');
  }

  const Node* descend(const std::string& value) const {
    const Node* node = &root_;
    for (const char ch : value) {
      const std::size_t index = character_index(ch);
      if (!node->children[index]) {
        return nullptr;
      }
      node = node->children[index].get();
    }
    return node;
  }

  Node root_;
  std::size_t size_ = 0;
};

class UnionFind {
 public:
  explicit UnionFind(std::size_t size) {
    parent_.reserve(size);
    rank_.reserve(size);
    for (std::size_t i = 0; i < size; ++i) {
      parent_.push_back(i);
      rank_.push_back(0);
    }
    components_ = size;
  }

  std::size_t find(std::size_t value) {
    validate(value);
    if (parent_[value] != value) {
      parent_[value] = find(parent_[value]);
    }
    return parent_[value];
  }

  bool unite(std::size_t left, std::size_t right) {
    std::size_t left_root = find(left);
    std::size_t right_root = find(right);
    if (left_root == right_root) {
      return false;
    }
    if (rank_[left_root] < rank_[right_root]) {
      std::swap(left_root, right_root);
    }
    parent_[right_root] = left_root;
    if (rank_[left_root] == rank_[right_root]) {
      ++rank_[left_root];
    }
    --components_;
    return true;
  }

  bool connected(std::size_t left, std::size_t right) { return find(left) == find(right); }
  std::size_t components() const { return components_; }

 private:
  void validate(std::size_t value) const {
    if (value >= parent_.size()) {
      throw std::out_of_range("union-find index out of range");
    }
  }

  DynamicArray<std::size_t> parent_;
  DynamicArray<std::size_t> rank_;
  std::size_t components_ = 0;
};

}  // namespace bts

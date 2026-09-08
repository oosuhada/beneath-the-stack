#pragma once

#include <algorithm>
#include <cstddef>
#include <memory>
#include <optional>
#include <stdexcept>
#include <utility>
#include <vector>

namespace bts {

template <typename Key, typename Value>
class BPlusTree {
 public:
  explicit BPlusTree(std::size_t order = 8) : order_(order), root_(std::make_unique<Node>(true)) {
    if (order_ < 4) {
      throw std::invalid_argument("B+ tree order must be at least 4");
    }
  }

  void insert(const Key& key, const Value& value) {
    auto split = insert_recursive(root_.get(), key, value);
    if (split.has_value()) {
      auto new_root = std::make_unique<Node>(false);
      new_root->keys.push_back(split->separator);
      new_root->children.push_back(std::move(root_));
      new_root->children.push_back(std::move(split->right));
      root_ = std::move(new_root);
    }
  }

  std::optional<Value> find(const Key& key) const {
    const Node* leaf = find_leaf(key);
    const auto it = std::lower_bound(leaf->keys.begin(), leaf->keys.end(), key);
    if (it == leaf->keys.end() || *it != key) {
      return std::nullopt;
    }
    return leaf->values[static_cast<std::size_t>(it - leaf->keys.begin())];
  }

  std::vector<std::pair<Key, Value>> range(const Key& lower, const Key& upper) const {
    if (upper < lower) {
      return {};
    }
    std::vector<std::pair<Key, Value>> result;
    const Node* leaf = find_leaf(lower);
    while (leaf != nullptr) {
      for (std::size_t i = 0; i < leaf->keys.size(); ++i) {
        if (leaf->keys[i] < lower) {
          continue;
        }
        if (leaf->keys[i] > upper) {
          return result;
        }
        result.emplace_back(leaf->keys[i], leaf->values[i]);
      }
      leaf = leaf->next;
    }
    return result;
  }

  std::size_t height() const {
    std::size_t result = 1;
    const Node* current = root_.get();
    while (!current->leaf) {
      ++result;
      current = current->children.front().get();
    }
    return result;
  }

  std::size_t leaf_count() const {
    const Node* current = root_.get();
    while (!current->leaf) {
      current = current->children.front().get();
    }
    std::size_t count = 0;
    while (current != nullptr) {
      ++count;
      current = current->next;
    }
    return count;
  }

 private:
  struct Node {
    explicit Node(bool is_leaf) : leaf(is_leaf) {}
    bool leaf;
    std::vector<Key> keys;
    std::vector<Value> values;
    std::vector<std::unique_ptr<Node>> children;
    Node* next = nullptr;
  };

  struct Split {
    Key separator;
    std::unique_ptr<Node> right;
  };

  std::size_t max_keys() const { return order_ - 1; }

  std::optional<Split> insert_recursive(Node* node, const Key& key, const Value& value) {
    if (node->leaf) {
      const auto it = std::lower_bound(node->keys.begin(), node->keys.end(), key);
      const std::size_t index = static_cast<std::size_t>(it - node->keys.begin());
      if (it != node->keys.end() && *it == key) {
        node->values[index] = value;
        return std::nullopt;
      }
      node->keys.insert(it, key);
      node->values.insert(node->values.begin() + static_cast<std::ptrdiff_t>(index), value);
      if (node->keys.size() <= max_keys()) {
        return std::nullopt;
      }
      return split_leaf(node);
    }

    const auto child_it = std::upper_bound(node->keys.begin(), node->keys.end(), key);
    const std::size_t child_index = static_cast<std::size_t>(child_it - node->keys.begin());
    auto child_split = insert_recursive(node->children[child_index].get(), key, value);
    if (!child_split.has_value()) {
      return std::nullopt;
    }

    node->keys.insert(node->keys.begin() + static_cast<std::ptrdiff_t>(child_index),
                      child_split->separator);
    node->children.insert(node->children.begin() + static_cast<std::ptrdiff_t>(child_index + 1),
                          std::move(child_split->right));
    if (node->keys.size() <= max_keys()) {
      return std::nullopt;
    }
    return split_internal(node);
  }

  Split split_leaf(Node* node) {
    const std::size_t middle = node->keys.size() / 2;
    auto right = std::make_unique<Node>(true);
    right->keys.assign(node->keys.begin() + static_cast<std::ptrdiff_t>(middle), node->keys.end());
    right->values.assign(node->values.begin() + static_cast<std::ptrdiff_t>(middle),
                         node->values.end());
    node->keys.erase(node->keys.begin() + static_cast<std::ptrdiff_t>(middle), node->keys.end());
    node->values.erase(node->values.begin() + static_cast<std::ptrdiff_t>(middle),
                       node->values.end());
    right->next = node->next;
    node->next = right.get();
    return Split{right->keys.front(), std::move(right)};
  }

  Split split_internal(Node* node) {
    const std::size_t middle = node->keys.size() / 2;
    const Key separator = node->keys[middle];
    auto right = std::make_unique<Node>(false);
    right->keys.assign(node->keys.begin() + static_cast<std::ptrdiff_t>(middle + 1),
                       node->keys.end());
    for (std::size_t i = middle + 1; i < node->children.size(); ++i) {
      right->children.push_back(std::move(node->children[i]));
    }
    node->keys.erase(node->keys.begin() + static_cast<std::ptrdiff_t>(middle), node->keys.end());
    node->children.erase(node->children.begin() + static_cast<std::ptrdiff_t>(middle + 1),
                         node->children.end());
    return Split{separator, std::move(right)};
  }

  const Node* find_leaf(const Key& key) const {
    const Node* node = root_.get();
    while (!node->leaf) {
      const auto it = std::upper_bound(node->keys.begin(), node->keys.end(), key);
      node = node->children[static_cast<std::size_t>(it - node->keys.begin())].get();
    }
    return node;
  }

  std::size_t order_;
  std::unique_ptr<Node> root_;
};

}  // namespace bts

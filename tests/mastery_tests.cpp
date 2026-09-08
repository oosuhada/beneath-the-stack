#include <filesystem>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

#include "bts/data_structures.hpp"
#include "bts/embedded.hpp"
#include "bts/http.hpp"
#include "bts/toy_storage.hpp"

namespace {

int failures = 0;

void check(bool condition, const std::string& message) {
  if (!condition) {
    ++failures;
    std::cerr << "FAIL: " << message << '\n';
  }
}

template <typename Exception, typename Function>
void check_throws(Function&& function, const std::string& message) {
  try {
    function();
  } catch (const Exception&) {
    return;
  } catch (...) {
    ++failures;
    std::cerr << "FAIL: " << message << " (wrong exception)\n";
    return;
  }
  ++failures;
  std::cerr << "FAIL: " << message << " (no exception)\n";
}

void test_dynamic_array() {
  bts::DynamicArray<std::string> values;
  for (int i = 0; i < 100; ++i) {
    values.push_back("v" + std::to_string(i));
  }
  check(values.size() == 100, "dynamic array tracks logical size");
  check(values.capacity() >= values.size(), "dynamic array grows capacity geometrically");
  check(values.at(42) == "v42", "dynamic array preserves constructed values across reallocation");
  bts::DynamicArray<std::string> copy = values;
  values[42] = "changed";
  check(copy[42] == "v42", "dynamic array copy owns independent storage");
  bts::DynamicArray<std::string> moved = std::move(copy);
  check(moved.size() == 100 && copy.empty(), "dynamic array move transfers storage ownership");
  check(moved.pop_back() == "v99" && moved.size() == 99,
        "dynamic array pop destroys final element");
  check_throws<std::out_of_range>([&] { (void)moved.at(500); },
                                  "dynamic array bounds check rejects invalid access");
}

void test_linear_structures() {
  bts::SinglyLinkedList<int> list;
  list.push_back(2);
  list.push_front(1);
  list.push_back(3);
  std::vector<int> observed;
  list.for_each([&](int value) { observed.push_back(value); });
  check(observed == std::vector<int>({1, 2, 3}), "linked list maintains pointer order");
  check(list.pop_front() == 1 && list.size() == 2, "linked list removes head in O(1) shape");

  bts::ArrayStack<int> stack;
  stack.push(10);
  stack.push(20);
  check(stack.top() == 20 && stack.pop() == 20 && stack.pop() == 10,
        "array stack preserves LIFO order");

  bts::LinkedQueue<int> queue;
  queue.push(10);
  queue.push(20);
  queue.push(30);
  check(queue.front() == 10 && queue.pop() == 10 && queue.pop() == 20,
        "linked queue preserves FIFO order");
}

void test_tree_trie_union_find() {
  bts::BinarySearchTree<int> tree;
  for (const int value : {5, 3, 7, 2, 4, 6, 8, 5}) {
    tree.insert(value);
  }
  const auto ordered = tree.in_order();
  check(tree.size() == 7, "BST ignores duplicate key insertions");
  check(ordered.size() == 7 && ordered[0] == 2 && ordered[6] == 8,
        "BST in-order traversal exposes sorted invariant");
  check(tree.height() == 3, "balanced insertion example produces expected BST height");
  check(tree.contains(6) && !tree.contains(99), "BST search follows ordering invariant");

  bts::Trie trie;
  trie.insert("cache");
  trie.insert("call");
  trie.insert("camera");
  check(trie.contains("cache") && !trie.contains("cac"), "trie distinguishes word and prefix");
  check(trie.starts_with("cam") && !trie.starts_with("dog"), "trie prefix walk is explicit");
  check_throws<std::invalid_argument>([&] { trie.insert("HTTP"); },
                                      "trie rejects values outside its documented alphabet");

  bts::UnionFind groups(6);
  groups.unite(0, 1);
  groups.unite(1, 2);
  groups.unite(3, 4);
  check(groups.connected(0, 2) && !groups.connected(0, 4),
        "union-find preserves separate components");
  check(groups.components() == 3, "union-find component count follows successful unions");
  groups.unite(2, 4);
  check(groups.connected(0, 3) && groups.components() == 2,
        "union-find path compression/rank bridge two sets");
}

void test_http_parser() {
  const auto request = bts::parse_http_request(
      "GET /health HTTP/1.1\r\nHost: localhost\r\nConnection: Keep-Alive\r\nX-Test:  yes \r\n\r\n");
  check(request.method == "GET" && request.target == "/health" && request.version == "HTTP/1.1",
        "HTTP parser splits request line");
  check(bts::http_header(request, "x-test") == "yes",
        "HTTP parser normalizes header names/spacing");
  check(!bts::http_connection_close(request), "HTTP keep-alive request stays reusable");

  const auto close_request =
      bts::parse_http_request("GET / HTTP/1.1\r\nHost: localhost\r\nConnection: close\r\n\r\n");
  check(bts::http_connection_close(close_request),
        "HTTP parser recognizes explicit close semantics");
  check_throws<std::invalid_argument>([&] { (void)bts::parse_http_request("GET / HTTP/1.1\n\n"); },
                                      "HTTP parser rejects incomplete CRLF framing");
  check_throws<std::invalid_argument>(
      [&] { (void)bts::parse_http_request("GET / HTTP/2\r\nHost: localhost\r\n\r\n"); },
      "HTTP parser makes supported protocol boundary explicit");
}

void test_toy_storage() {
  const std::filesystem::path path =
      std::filesystem::temp_directory_path() / "beneath-the-stack-storage-test.db";
  std::filesystem::remove(path);
  {
    bts::ToyTable table(path);
    for (std::uint32_t id = 0; id < 100; ++id) {
      table.insert(bts::ToyRow{id, "user" + std::to_string(id),
                               "user" + std::to_string(id) + "@example.test"});
    }
    check(table.row_count() == 100, "toy table persists row count in header page");
    check(table.data_page_count() == 4, "toy table maps fixed rows onto 4KiB pages");
    check(table.find_indexed(63) == table.find_scanned(63),
          "B+tree index resolves the same persisted row as sequential page scan");
    const auto range = table.range_indexed(30, 39);
    check(range.size() == 10 && range.front().id == 30 && range.back().id == 39,
          "linked B+tree leaves drive persisted range reads");
    const bts::ToyRow duplicate{63, "duplicate", "duplicate@example.test"};
    check_throws<std::invalid_argument>([&] { table.insert(duplicate); },
                                        "toy table prevents duplicate primary key in index");
  }
  {
    bts::ToyTable reopened(path);
    check(reopened.row_count() == 100, "toy database survives close/reopen boundary");
    const auto row = reopened.find_indexed(99);
    check(row.has_value() && row->username == "user99",
          "index rebuild from pages restores point lookup after reopen");
  }
  std::filesystem::remove(path);
}

void test_embedded_simulator() {
  bts::SimulatedDigitalOutput fan;
  bts::ThermalController controller(28.0, 26.0, fan);
  bts::ScriptedTemperatureInput input({25.0, 28.0, 29.0, 27.0, 26.0, 29.0, 25.0});
  input.run([&](std::size_t tick, double temperature) {
    controller.on_temperature_sample(tick, temperature);
  });
  check(fan.transitions().size() == 4, "simulated HAL records two on/off actuator cycles");
  check(controller.events().size() == 4,
        "thermal state machine emits evidence for each transition");
  check(!fan.read_back(), "hysteresis state machine finishes with actuator off");
  check_throws<std::invalid_argument>(
      [&] {
        bts::ThermalController invalid(26.0, 28.0, fan);
        (void)invalid;
      },
      "embedded controller rejects inverted hysteresis thresholds");
}

}  // namespace

int main() {
  test_dynamic_array();
  test_linear_structures();
  test_tree_trie_union_find();
  test_http_parser();
  test_toy_storage();
  test_embedded_simulator();
  if (failures != 0) {
    std::cerr << failures << " mastery test(s) failed\n";
    return 1;
  }
  std::cout << "All mastery tests passed.\n";
  return 0;
}

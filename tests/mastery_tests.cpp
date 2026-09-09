#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

#include "bts/allocator.hpp"
#include "bts/data_structures.hpp"
#include "bts/durable_job_runtime.hpp"
#include "bts/embedded.hpp"
#include "bts/firmware.hpp"
#include "bts/http.hpp"
#include "bts/scheduler.hpp"
#include "bts/toy_filesystem.hpp"
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
  check_throws<std::invalid_argument>(
      [&] {
        (void)bts::parse_http_request("GET / HTTP/1.1\r\nBad Header: x\r\nHost: localhost\r\n\r\n");
      },
      "HTTP parser rejects whitespace inside header names");
  check_throws<std::invalid_argument>(
      [&] { (void)bts::parse_http_request("GET / HTTP/1.1\r\nConnection: close\r\n\r\n"); },
      "HTTP/1.1 parser requires a Host header");
  check_throws<std::invalid_argument>(
      [&] {
        std::string oversized = "GET / HTTP/1.1\r\nHost: localhost\r\nX: ";
        oversized.append(bts::kMaxHttpHeaderBytes, 'x');
        oversized += "\r\n\r\n";
        (void)bts::parse_http_request(oversized);
      },
      "HTTP parser caps header bytes before unbounded buffering becomes parser work");

  std::uint64_t state = 0x5eedf00dULL;
  std::size_t accepted_mutations = 0;
  for (int sample = 0; sample < 500; ++sample) {
    std::string mutated = "GET /fuzz HTTP/1.1\r\nHost: localhost\r\nX-Fuzz: value\r\n\r\n";
    state ^= state << 13;
    state ^= state >> 7;
    state ^= state << 17;
    const std::size_t index = static_cast<std::size_t>(state % mutated.size());
    mutated[index] = static_cast<char>(state & 0x7fU);
    try {
      const auto parsed = bts::parse_http_request(mutated);
      ++accepted_mutations;
      check(parsed.version == "HTTP/1.1" && !parsed.method.empty() && !parsed.target.empty() &&
                parsed.headers.size() <= bts::kMaxHttpHeaderCount,
            "accepted parser mutation still satisfies parser invariants");
    } catch (const std::invalid_argument&) {
    }
  }
  check(accepted_mutations > 0 && accepted_mutations < 500,
        "fixed-seed parser mutations exercise both accepted and rejected inputs");
}

void test_allocator() {
  bts::FreeListAllocator allocator(4096, true);
  void* first = allocator.allocate(31);
  void* second = allocator.allocate(127);
  check(first != nullptr && second != nullptr, "free-list allocator returns payloads from arena");
  check(reinterpret_cast<std::uintptr_t>(first) % bts::FreeListAllocator::kAlignment == 0,
        "allocator payload obeys max_align_t alignment");
  allocator.deallocate(first);
  void* reused = allocator.allocate(16);
  check(reused == first, "first-fit free list reuses a released compatible block");
  allocator.deallocate(reused);
  allocator.deallocate(second);
  const auto final_stats = allocator.stats();
  check(final_stats.live_requested_bytes == 0 && final_stats.largest_free_block_bytes > 3500,
        "coalescing restores one large free region after adjacent frees");
  check_throws<std::invalid_argument>(
      [&] { allocator.deallocate(second); },
      "toy allocator detects double free instead of corrupting list");

  bts::FreeListAllocator fragmented(1280, false);
  void* a = fragmented.allocate(240);
  void* b = fragmented.allocate(240);
  void* c = fragmented.allocate(240);
  void* d = fragmented.allocate(240);
  check(a != nullptr && b != nullptr && c != nullptr && d != nullptr,
        "fragmentation fixture fills arena with four blocks");
  fragmented.deallocate(b);
  fragmented.deallocate(c);
  check(fragmented.allocate(400) == nullptr,
        "without coalescing total free space can exist without a large enough contiguous block");
  fragmented.deallocate(a);
  fragmented.deallocate(d);
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

void test_firmware_boundary() {
  bts::RingBuffer<4> reject(bts::RingOverflowPolicy::kReject);
  check(reject.push(1) && reject.push(2) && reject.push(3) && reject.push(4),
        "ring buffer accepts bounded UART bytes until capacity");
  check(!reject.push(5) && reject.stats().rejected == 1,
        "reject-policy ring buffer makes overflow explicit instead of allocating");
  check(reject.pop() == 1 && reject.pop() == 2, "ring buffer preserves FIFO order");

  bts::RingBuffer<4> overwrite(bts::RingOverflowPolicy::kOverwriteOldest);
  for (std::uint8_t value = 0; value < 6; ++value) {
    (void)overwrite.push(value);
  }
  check(overwrite.stats().overwritten == 2 && overwrite.pop() == 2,
        "overwrite-policy ring buffer drops oldest bytes deterministically");

  bts::ProtocolParser parser;
  bts::SerialFrame frame;
  bool completed = false;
  for (std::uint8_t byte : bts::encode_frame(bts::SerialFrame{0x42, {7, 8}})) {
    completed = parser.feed(byte, frame) || completed;
  }
  check(completed && frame.type == 0x42 && frame.payload == std::vector<std::uint8_t>({7, 8}),
        "serial protocol parser reconstructs a framed packet across bytes");
  auto corrupt = bts::encode_frame(bts::SerialFrame{0x42, {7, 8}});
  corrupt.back() ^= 0x1U;
  for (std::uint8_t byte : corrupt) {
    (void)parser.feed(byte, frame);
  }
  check(parser.stats().checksum_errors == 1, "serial parser rejects corrupted checksum");

  const auto latency = bts::compare_polling_and_events({750, 1750, 2600}, 1000, 25);
  check(latency.polling_max_latency_us > latency.event_max_latency_us,
        "interrupt-like event dispatch lowers worst-case response latency in this model");

  bts::SimulatedActuator actuator;
  bts::FirmwareController controller({}, actuator);
  for (const auto sample :
       {bts::SensorSample{0, 24.0, true, true}, bts::SensorSample{10, 35.0, true, true},
        bts::SensorSample{80, 200.0, true, true}, bts::SensorSample{90, 23.0, true, true}}) {
    controller.on_sample(sample);
  }
  check(controller.state() == bts::FirmwareState::kRecovery && !actuator.enabled(),
        "capstone controller enters a safe recovery path after injected sensor fault");

  const auto schedule = bts::simulate_cooperative_scheduler(
      {{"fast", 10, 1}, {"long", 50, 80}, {"telemetry", 100, 2}}, 160);
  check(schedule.tasks[1].overruns > 0 && schedule.tasks[0].deadline_misses > 0,
        "cooperative scheduler exposes deadline damage from a long-running task");

  bts::SimulatedMmio mmio;
  constexpr std::uint32_t led = 1U << 5U;
  mmio.set_bits(bts::SimulatedMmio::kGpioDirection, led);
  mmio.toggle_bits(bts::SimulatedMmio::kGpioOutput, led);
  check(mmio.any(bts::SimulatedMmio::kGpioDirection, led) &&
            mmio.any(bts::SimulatedMmio::kGpioOutput, led),
        "simulated MMIO register uses masks to set and toggle a GPIO bit");
}

void test_scheduler_simulator() {
  const std::vector<bts::SchedulerJob> jobs{
      {0, 0, 20, 5}, {1, 0, 2, 0}, {2, 1, 2, 0}, {3, 2, 2, 0}};
  const auto fifo = bts::simulate_fifo(jobs, 10);
  const auto round_robin = bts::simulate_round_robin(jobs, 4, 10);
  const auto priority = bts::simulate_priority_non_preemptive(jobs, 10);
  const auto sjf = bts::simulate_shortest_job_first(jobs, 10);
  check(fifo.max_waiting > round_robin.max_waiting,
        "round robin can reduce the convoy max wait for short jobs in the toy scheduler");
  check(priority.jobs[0].waiting > 0,
        "priority scheduling can delay a long low-priority job even when it arrived first");
  check(sjf.mean_turnaround <= fifo.mean_turnaround,
        "shortest-job-first improves mean turnaround for the toy convoy fixture");
}

void test_toy_filesystem() {
  bts::ToyFileSystem fs;
  fs.mkdir("/var");
  fs.mkdir("/var/log");
  fs.write_file("/var/log/app.txt", "directory entries resolve to inode-like metadata and blocks");
  fs.link_file("/var/log/app.txt", "/var/log/app.link");
  const auto left = fs.stat("/var/log/app.txt");
  const auto right = fs.stat("/var/log/app.link");
  check(left.inode == right.inode && left.reference_count == 2,
        "toy hard link gives two directory entries to the same inode-like object");
  check(
      left.block_count > 1 && fs.read_file("/var/log/app.link") == fs.read_file("/var/log/app.txt"),
      "toy filesystem reads file content through fixed-size blocks regardless of path alias");
  check_throws<std::invalid_argument>([&] { (void)fs.lookup("/var/../etc/passwd"); },
                                      "toy filesystem rejects traversal path components");
}

void test_durable_job_runtime() {
  const auto journal =
      (std::filesystem::temp_directory_path() / "bts-capstone-mastery.journal").string();
  std::error_code ignored;
  std::filesystem::remove(journal, ignored);

  bts::RuntimeConfig config{};
  config.queue_capacity = 2;
  config.retry_delay_ms = 5;
  bts::DurableJobRuntime runtime(journal, config);

  const auto first = runtime.accept({"req-1", 5, 2, "payload"}, 0);
  const auto duplicate = runtime.accept({"req-1", 5, 2, "payload"}, 0);
  const auto second = runtime.accept({"req-2", 1, 1, "payload"}, 0);
  const auto full = runtime.accept({"req-3", 1, 1, "payload"}, 0);
  check(first.accepted && duplicate.duplicate && duplicate.job_id == first.job_id,
        "durable runtime maps a duplicate request id to one logical job");
  check(second.accepted && full.rejected, "durable runtime rejects excess work at a bounded queue");

  const auto claimed = runtime.claim_next(0, "worker-a");
  check(claimed.has_value() && claimed->request_id == "req-1",
        "durable runtime scheduler claims the higher-priority ready job first");

  auto recovered = bts::DurableJobRuntime::recover(journal, config);
  const auto counters = recovered.counters();
  check(counters.recovered_running == 1,
        "durable runtime moves an in-flight job to retry wait during recovery");
  check(recovered.process_one(100, "worker-b", false),
        "durable runtime can reprocess a recovered retry job");

  {
    std::ofstream out(journal, std::ios::app | std::ios::binary);
    out << "truncated-record";
  }
  auto corrupt = bts::DurableJobRuntime::recover(journal, config);
  check(corrupt.counters().invalid_journal_records == 1,
        "durable runtime rejects a corrupt journal tail before mutating state");
  std::filesystem::remove(journal, ignored);

  const auto encoded = bts::encode_submit_command({"req-frame", 3, 1, "body"});
  check(bts::parse_submit_command(encoded).has_value(),
        "durable runtime command parser accepts a well-formed submit payload");
  check(!bts::parse_submit_command("missing-fields").has_value(),
        "durable runtime command parser rejects malformed input");
}

}  // namespace

int main() {
  test_dynamic_array();
  test_linear_structures();
  test_tree_trie_union_find();
  test_http_parser();
  test_allocator();
  test_toy_storage();
  test_embedded_simulator();
  test_firmware_boundary();
  test_scheduler_simulator();
  test_toy_filesystem();
  test_durable_job_runtime();
  if (failures != 0) {
    std::cerr << failures << " mastery test(s) failed\n";
    return 1;
  }
  std::cout << "All mastery tests passed.\n";
  return 0;
}

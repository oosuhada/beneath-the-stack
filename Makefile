CXX ?= clang++
CXXFLAGS ?= -std=c++20 -O2 -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread
DEBUG_FLAGS ?= -std=c++20 -O0 -g -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread

BIN_DIR := build/bin
LABS := hash_lab heap_lab graph_lab race_lab http_lab btree_lab data_structures_lab memory_lab process_lab storage_lab embedded_lab
LAB_BINS := $(addprefix $(BIN_DIR)/,$(LABS))
HEADERS := $(shell find include -type f -name '*.hpp')
TEST_BINS := $(BIN_DIR)/system_tests $(BIN_DIR)/mastery_tests

.PHONY: all clean test lint debug labs

all: labs $(TEST_BINS)

labs: $(LAB_BINS)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(BIN_DIR)/hash_lab: labs/hash_table/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/heap_lab: labs/heap_scheduler/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/graph_lab: labs/graph_traversal/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/race_lab: labs/concurrency_race/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/http_lab: labs/raw_http/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/btree_lab: labs/db_index/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/data_structures_lab: labs/data_structures/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/memory_lab: labs/memory_locality/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/process_lab: labs/process_fd/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/storage_lab: labs/storage_engine/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/embedded_lab: labs/embedded_sim/main.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_DIR)/system_tests: tests/system_tests.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(DEBUG_FLAGS) $< -o $@

$(BIN_DIR)/mastery_tests: tests/mastery_tests.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(DEBUG_FLAGS) $< -o $@

test: $(TEST_BINS)
	$(BIN_DIR)/system_tests
	$(BIN_DIR)/mastery_tests

lint:
	$(CXX) $(DEBUG_FLAGS) -fsyntax-only tests/system_tests.cpp
	$(CXX) $(DEBUG_FLAGS) -fsyntax-only tests/mastery_tests.cpp
	@for src in labs/*/main.cpp; do \
	  echo "lint $$src"; \
	  $(CXX) $(DEBUG_FLAGS) -fsyntax-only $$src; \
	done
	@git diff --check

debug: CXXFLAGS=$(DEBUG_FLAGS)
debug: clean all

clean:
	rm -rf build


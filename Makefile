CXX ?= clang++
CXXFLAGS ?= -std=c++20 -O2 -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread
DEBUG_FLAGS ?= -std=c++20 -O0 -g -Wall -Wextra -Wpedantic -Werror -Iinclude -pthread

BIN_DIR := build/bin
LABS := hash_lab heap_lab graph_lab race_lab http_lab btree_lab
LAB_BINS := $(addprefix $(BIN_DIR)/,$(LABS))
HEADERS := $(shell find include -type f -name '*.hpp')

.PHONY: all clean test lint debug labs

all: labs $(BIN_DIR)/system_tests

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

$(BIN_DIR)/system_tests: tests/system_tests.cpp $(HEADERS) | $(BIN_DIR)
	$(CXX) $(DEBUG_FLAGS) $< -o $@

test: $(BIN_DIR)/system_tests
	$(BIN_DIR)/system_tests

lint:
	$(CXX) $(DEBUG_FLAGS) -fsyntax-only tests/system_tests.cpp
	@for src in labs/*/main.cpp; do \
	  echo "lint $$src"; \
	  $(CXX) $(DEBUG_FLAGS) -fsyntax-only $$src; \
	done
	@git diff --check

debug: CXXFLAGS=$(DEBUG_FLAGS)
debug: clean all

clean:
	rm -rf build


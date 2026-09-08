cmake_minimum_required(VERSION 3.20)
project(beneath_the_stack VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

if(MSVC)
  add_compile_options(/W4 /WX)
else()
  add_compile_options(-Wall -Wextra -Wpedantic -Werror)
endif()

find_package(Threads REQUIRED)

function(add_bts_executable target source)
  add_executable(${target} ${source})
  target_include_directories(${target} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)
  target_link_libraries(${target} PRIVATE Threads::Threads)
endfunction()

add_bts_executable(hash_lab labs/hash_table/main.cpp)
add_bts_executable(heap_lab labs/heap_scheduler/main.cpp)
add_bts_executable(graph_lab labs/graph_traversal/main.cpp)
add_bts_executable(race_lab labs/concurrency_race/main.cpp)
add_bts_executable(http_lab labs/raw_http/main.cpp)
add_bts_executable(btree_lab labs/db_index/main.cpp)
add_bts_executable(system_tests tests/system_tests.cpp)

enable_testing()
add_test(NAME system_tests COMMAND system_tests)


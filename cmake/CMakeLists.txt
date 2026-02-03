cmake_minimum_required(VERSION 3.10)
project(FizzBuzz C)

set(CMAKE_C_STANDARD 11)

# CMakeLists.txt for FizzBuzz
# Build and run: mkdir build && cd build && cmake .. && make && ./fizzbuzz

add_executable(fizzbuzz main.c)

if(UNIX)
    target_compile_options(fizzbuzz PRIVATE -Wall -Wextra -pedantic)
endif()

# Custom target to run fizzbuzz
add_custom_target(run
    COMMAND fizzbuzz
    DEPENDS fizzbuzz
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    COMMENT "Running FizzBuzz...")
)

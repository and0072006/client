cmake_minimum_required(VERSION 2.8)
project(client)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -Wextra -Wconversion -Wshadow -Wno-unused-parameter -Wno-unused-function -Wno-missing-field-initializers -Wno-ignored-qualifiers -Werror -Wno-conversion -O0 -Wnon-virtual-dtor -Woverloaded-virtual -Wno-aggressive-loop-optimizations -std=gnu++11")

set(SOURCE_EXE main.cpp)

include_directories(tcpclient conf log)


add_executable(client ${SOURCE_EXE})

add_subdirectory(tcpclient)
add_subdirectory(conf)
add_subdirectory(log)

target_link_libraries(client tcpclient conf log pthread)

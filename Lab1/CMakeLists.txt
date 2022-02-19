cmake_minimum_required(VERSION 3.16)
project(L1Q5)

#set(CMAKE_C_FLAGS "-Wpedantic -Wall -Wextra -Werror -std=c89 -m32")
set(CMAKE_C_FLAGS "-Wpedantic -Wall -Wextra -Werror -std=c89 -m64")

add_executable(L1Q5 main.c)

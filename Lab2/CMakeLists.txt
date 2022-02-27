cmake_minimum_required(VERSION 3.16)
project(L2Q3)

set(CMAKE_C_FLAGS "-ggdb -Wall -std=c99")

add_executable(L2Q3 vector-test.c vector.h vector.c)

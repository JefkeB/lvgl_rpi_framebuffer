cmake_minimum_required(VERSION 3.12.4)


file(GLOB_RECURSE SOURCES ./*.c)
file(GLOB_RECURSE INCLUDES ${CMAKE_SOURCE_DIR}/*.h)

include_directories(app PRIVATE .)

add_library(app STATIC ${SOURCES})
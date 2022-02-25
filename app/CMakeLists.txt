cmake_minimum_required(VERSION 3.12.4)

SET(CMAKE_CXX_FLAGS "-O3")
SET(CMAKE_CXX_FLAGS "-g3")

file(GLOB_RECURSE SOURCES ./*.c)
file(GLOB_RECURSE INCLUDES ${CMAKE_SOURCE_DIR}/*.h)

include_directories(app PRIVATE .)

add_library(app STATIC ${SOURCES})

target_compile_options(app
    PRIVATE

            # optimalisation    
            #-g3
            -g
            -O0
)
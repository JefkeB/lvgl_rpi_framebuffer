cmake_minimum_required(VERSION 3.10)
project(lvgl)
set(CMAKE_C_STANDARD 11)#C11
set(CMAKE_CXX_STANDARD 17)#C17
set(CMAKE_CXX_STANDARD_REQUIRED ON)

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR})

include_directories( main PRIVATE "app")

add_subdirectory(lvgl)
add_subdirectory(lv_drivers)
add_subdirectory(app)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin) 
SET(CMAKE_CXX_FLAGS "-O3")

add_executable(main main.c ${SOURCES} ${INCLUDES})
#add_compile_definitions(LV_CONF_INCLUDE_SIMPLE)
target_link_libraries(main PRIVATE lvgl lvgl::drivers app)
add_custom_target (run COMMAND ${EXECUTABLE_OUTPUT_PATH}/main)

cmake_minimum_required(VERSION 3.0)

project(test_project)

# Set the directories for the include and source files
set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)
set(SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)

# Add the include directories
include_directories(${INCLUDE_DIR})

# Define the source files
set(SOURCES
    ${SOURCE_DIR}/util.cpp
)

# Create a shared library from the source files
add_library(lib-all SHARED ${SOURCES})

# Link the library with OpenCV
find_package(OpenCV REQUIRED)
target_link_libraries(lib-all PUBLIC ${OpenCV_LIBS})

# Create the executables
add_executable(test1 app/test1.cpp)

# Link the executables with the library and OpenCV
target_link_libraries(test1 PRIVATE lib-all ${OpenCV_LIBS})

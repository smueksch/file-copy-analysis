cmake_minimum_required(VERSION 3.10)

# Set the project name:
project(FileCopyAnalysis VERSION 0.1.0)

# Set up directory structure:
set(RW_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/rw-cp)
set(MMAP_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/mmap-cp)

# Define new binary output directory:
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin)

# Add the executables:
add_executable(rw-cp ${RW_SRC_DIR}/main.c)
add_executable(mmap-cp ${MMAP_SRC_DIR}/main.c)

# Set C standard for executables:
set_property(TARGET rw-cp PROPERTY C_STANDARD 99)
set_property(TARGET mmap-cp PROPERTY C_STANDARD 99)

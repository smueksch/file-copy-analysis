# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.16.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.16.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.16.3/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.16.3/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/CMakeFiles /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named mmap-cp

# Build rule for target.
mmap-cp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 mmap-cp
.PHONY : mmap-cp

# fast build rule for target.
mmap-cp/fast:
	$(MAKE) -f CMakeFiles/mmap-cp.dir/build.make CMakeFiles/mmap-cp.dir/build
.PHONY : mmap-cp/fast

#=============================================================================
# Target rules for targets named rw-cp

# Build rule for target.
rw-cp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 rw-cp
.PHONY : rw-cp

# fast build rule for target.
rw-cp/fast:
	$(MAKE) -f CMakeFiles/rw-cp.dir/build.make CMakeFiles/rw-cp.dir/build
.PHONY : rw-cp/fast

src/mmap-cp/main.o: src/mmap-cp/main.c.o

.PHONY : src/mmap-cp/main.o

# target to build an object file
src/mmap-cp/main.c.o:
	$(MAKE) -f CMakeFiles/mmap-cp.dir/build.make CMakeFiles/mmap-cp.dir/src/mmap-cp/main.c.o
.PHONY : src/mmap-cp/main.c.o

src/mmap-cp/main.i: src/mmap-cp/main.c.i

.PHONY : src/mmap-cp/main.i

# target to preprocess a source file
src/mmap-cp/main.c.i:
	$(MAKE) -f CMakeFiles/mmap-cp.dir/build.make CMakeFiles/mmap-cp.dir/src/mmap-cp/main.c.i
.PHONY : src/mmap-cp/main.c.i

src/mmap-cp/main.s: src/mmap-cp/main.c.s

.PHONY : src/mmap-cp/main.s

# target to generate assembly for a file
src/mmap-cp/main.c.s:
	$(MAKE) -f CMakeFiles/mmap-cp.dir/build.make CMakeFiles/mmap-cp.dir/src/mmap-cp/main.c.s
.PHONY : src/mmap-cp/main.c.s

src/rw-cp/main.o: src/rw-cp/main.c.o

.PHONY : src/rw-cp/main.o

# target to build an object file
src/rw-cp/main.c.o:
	$(MAKE) -f CMakeFiles/rw-cp.dir/build.make CMakeFiles/rw-cp.dir/src/rw-cp/main.c.o
.PHONY : src/rw-cp/main.c.o

src/rw-cp/main.i: src/rw-cp/main.c.i

.PHONY : src/rw-cp/main.i

# target to preprocess a source file
src/rw-cp/main.c.i:
	$(MAKE) -f CMakeFiles/rw-cp.dir/build.make CMakeFiles/rw-cp.dir/src/rw-cp/main.c.i
.PHONY : src/rw-cp/main.c.i

src/rw-cp/main.s: src/rw-cp/main.c.s

.PHONY : src/rw-cp/main.s

# target to generate assembly for a file
src/rw-cp/main.c.s:
	$(MAKE) -f CMakeFiles/rw-cp.dir/build.make CMakeFiles/rw-cp.dir/src/rw-cp/main.c.s
.PHONY : src/rw-cp/main.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... mmap-cp"
	@echo "... rw-cp"
	@echo "... src/mmap-cp/main.o"
	@echo "... src/mmap-cp/main.i"
	@echo "... src/mmap-cp/main.s"
	@echo "... src/rw-cp/main.o"
	@echo "... src/rw-cp/main.i"
	@echo "... src/rw-cp/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

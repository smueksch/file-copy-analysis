# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Include any dependencies generated for this target.
include CMakeFiles/rw-cp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rw-cp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rw-cp.dir/flags.make

CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.o: CMakeFiles/rw-cp.dir/flags.make
CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.o: src/rw-cp/fileio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.o   -c /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/src/rw-cp/fileio.c

CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/src/rw-cp/fileio.c > CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.i

CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/src/rw-cp/fileio.c -o CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.s

CMakeFiles/rw-cp.dir/src/rw-cp/main.c.o: CMakeFiles/rw-cp.dir/flags.make
CMakeFiles/rw-cp.dir/src/rw-cp/main.c.o: src/rw-cp/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/rw-cp.dir/src/rw-cp/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rw-cp.dir/src/rw-cp/main.c.o   -c /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/src/rw-cp/main.c

CMakeFiles/rw-cp.dir/src/rw-cp/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rw-cp.dir/src/rw-cp/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/src/rw-cp/main.c > CMakeFiles/rw-cp.dir/src/rw-cp/main.c.i

CMakeFiles/rw-cp.dir/src/rw-cp/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rw-cp.dir/src/rw-cp/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/src/rw-cp/main.c -o CMakeFiles/rw-cp.dir/src/rw-cp/main.c.s

# Object files for target rw-cp
rw__cp_OBJECTS = \
"CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.o" \
"CMakeFiles/rw-cp.dir/src/rw-cp/main.c.o"

# External object files for target rw-cp
rw__cp_EXTERNAL_OBJECTS =

bin/rw-cp: CMakeFiles/rw-cp.dir/src/rw-cp/fileio.c.o
bin/rw-cp: CMakeFiles/rw-cp.dir/src/rw-cp/main.c.o
bin/rw-cp: CMakeFiles/rw-cp.dir/build.make
bin/rw-cp: CMakeFiles/rw-cp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable bin/rw-cp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rw-cp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rw-cp.dir/build: bin/rw-cp

.PHONY : CMakeFiles/rw-cp.dir/build

CMakeFiles/rw-cp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rw-cp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rw-cp.dir/clean

CMakeFiles/rw-cp.dir/depend:
	cd /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis /Users/LIN/Nextcloud/university/ug-4/phd-applications/file-copy-analysis/CMakeFiles/rw-cp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rw-cp.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nour/sort1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nour/sort1/bin

# Include any dependencies generated for this target.
include CMakeFiles/insertsort_mini_o1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/insertsort_mini_o1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/insertsort_mini_o1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/insertsort_mini_o1.dir/flags.make

CMakeFiles/insertsort_mini_o1.dir/insert.c.o: CMakeFiles/insertsort_mini_o1.dir/flags.make
CMakeFiles/insertsort_mini_o1.dir/insert.c.o: /home/nour/sort1/insert.c
CMakeFiles/insertsort_mini_o1.dir/insert.c.o: CMakeFiles/insertsort_mini_o1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/sort1/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/insertsort_mini_o1.dir/insert.c.o"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/insertsort_mini_o1.dir/insert.c.o -MF CMakeFiles/insertsort_mini_o1.dir/insert.c.o.d -o CMakeFiles/insertsort_mini_o1.dir/insert.c.o -c /home/nour/sort1/insert.c

CMakeFiles/insertsort_mini_o1.dir/insert.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/insertsort_mini_o1.dir/insert.c.i"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/sort1/insert.c > CMakeFiles/insertsort_mini_o1.dir/insert.c.i

CMakeFiles/insertsort_mini_o1.dir/insert.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/insertsort_mini_o1.dir/insert.c.s"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/sort1/insert.c -o CMakeFiles/insertsort_mini_o1.dir/insert.c.s

# Object files for target insertsort_mini_o1
insertsort_mini_o1_OBJECTS = \
"CMakeFiles/insertsort_mini_o1.dir/insert.c.o"

# External object files for target insertsort_mini_o1
insertsort_mini_o1_EXTERNAL_OBJECTS =

insertsort_mini_o1: CMakeFiles/insertsort_mini_o1.dir/insert.c.o
insertsort_mini_o1: CMakeFiles/insertsort_mini_o1.dir/build.make
insertsort_mini_o1: CMakeFiles/insertsort_mini_o1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nour/sort1/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable insertsort_mini_o1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/insertsort_mini_o1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/insertsort_mini_o1.dir/build: insertsort_mini_o1
.PHONY : CMakeFiles/insertsort_mini_o1.dir/build

CMakeFiles/insertsort_mini_o1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/insertsort_mini_o1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/insertsort_mini_o1.dir/clean

CMakeFiles/insertsort_mini_o1.dir/depend:
	cd /home/nour/sort1/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nour/sort1 /home/nour/sort1 /home/nour/sort1/bin /home/nour/sort1/bin /home/nour/sort1/bin/CMakeFiles/insertsort_mini_o1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/insertsort_mini_o1.dir/depend


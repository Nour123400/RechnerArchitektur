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
include CMakeFiles/matrix_mini_o1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/matrix_mini_o1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/matrix_mini_o1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrix_mini_o1.dir/flags.make

CMakeFiles/matrix_mini_o1.dir/Matrix.c.o: CMakeFiles/matrix_mini_o1.dir/flags.make
CMakeFiles/matrix_mini_o1.dir/Matrix.c.o: /home/nour/sort1/Matrix.c
CMakeFiles/matrix_mini_o1.dir/Matrix.c.o: CMakeFiles/matrix_mini_o1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/sort1/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/matrix_mini_o1.dir/Matrix.c.o"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/matrix_mini_o1.dir/Matrix.c.o -MF CMakeFiles/matrix_mini_o1.dir/Matrix.c.o.d -o CMakeFiles/matrix_mini_o1.dir/Matrix.c.o -c /home/nour/sort1/Matrix.c

CMakeFiles/matrix_mini_o1.dir/Matrix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/matrix_mini_o1.dir/Matrix.c.i"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/sort1/Matrix.c > CMakeFiles/matrix_mini_o1.dir/Matrix.c.i

CMakeFiles/matrix_mini_o1.dir/Matrix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/matrix_mini_o1.dir/Matrix.c.s"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/sort1/Matrix.c -o CMakeFiles/matrix_mini_o1.dir/Matrix.c.s

# Object files for target matrix_mini_o1
matrix_mini_o1_OBJECTS = \
"CMakeFiles/matrix_mini_o1.dir/Matrix.c.o"

# External object files for target matrix_mini_o1
matrix_mini_o1_EXTERNAL_OBJECTS =

matrix_mini_o1: CMakeFiles/matrix_mini_o1.dir/Matrix.c.o
matrix_mini_o1: CMakeFiles/matrix_mini_o1.dir/build.make
matrix_mini_o1: CMakeFiles/matrix_mini_o1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nour/sort1/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable matrix_mini_o1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_mini_o1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrix_mini_o1.dir/build: matrix_mini_o1
.PHONY : CMakeFiles/matrix_mini_o1.dir/build

CMakeFiles/matrix_mini_o1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matrix_mini_o1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matrix_mini_o1.dir/clean

CMakeFiles/matrix_mini_o1.dir/depend:
	cd /home/nour/sort1/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nour/sort1 /home/nour/sort1 /home/nour/sort1/bin /home/nour/sort1/bin /home/nour/sort1/bin/CMakeFiles/matrix_mini_o1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrix_mini_o1.dir/depend


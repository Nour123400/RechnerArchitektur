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
CMAKE_SOURCE_DIR = /home/nour/Matrix/stackMatrix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nour/Matrix/stackMatrix/bin

# Include any dependencies generated for this target.
include CMakeFiles/stackMatrix_g.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/stackMatrix_g.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/stackMatrix_g.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stackMatrix_g.dir/flags.make

CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o: CMakeFiles/stackMatrix_g.dir/flags.make
CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o: /home/nour/Matrix/stackMatrix/stackMatrix.c
CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o: CMakeFiles/stackMatrix_g.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Matrix/stackMatrix/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o -MF CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o.d -o CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o -c /home/nour/Matrix/stackMatrix/stackMatrix.c

CMakeFiles/stackMatrix_g.dir/stackMatrix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stackMatrix_g.dir/stackMatrix.c.i"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Matrix/stackMatrix/stackMatrix.c > CMakeFiles/stackMatrix_g.dir/stackMatrix.c.i

CMakeFiles/stackMatrix_g.dir/stackMatrix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stackMatrix_g.dir/stackMatrix.c.s"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Matrix/stackMatrix/stackMatrix.c -o CMakeFiles/stackMatrix_g.dir/stackMatrix.c.s

# Object files for target stackMatrix_g
stackMatrix_g_OBJECTS = \
"CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o"

# External object files for target stackMatrix_g
stackMatrix_g_EXTERNAL_OBJECTS =

stackMatrix_g: CMakeFiles/stackMatrix_g.dir/stackMatrix.c.o
stackMatrix_g: CMakeFiles/stackMatrix_g.dir/build.make
stackMatrix_g: CMakeFiles/stackMatrix_g.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nour/Matrix/stackMatrix/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable stackMatrix_g"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stackMatrix_g.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stackMatrix_g.dir/build: stackMatrix_g
.PHONY : CMakeFiles/stackMatrix_g.dir/build

CMakeFiles/stackMatrix_g.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stackMatrix_g.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stackMatrix_g.dir/clean

CMakeFiles/stackMatrix_g.dir/depend:
	cd /home/nour/Matrix/stackMatrix/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nour/Matrix/stackMatrix /home/nour/Matrix/stackMatrix /home/nour/Matrix/stackMatrix/bin /home/nour/Matrix/stackMatrix/bin /home/nour/Matrix/stackMatrix/bin/CMakeFiles/stackMatrix_g.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stackMatrix_g.dir/depend


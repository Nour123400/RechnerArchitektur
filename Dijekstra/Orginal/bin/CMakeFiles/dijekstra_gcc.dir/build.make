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
CMAKE_SOURCE_DIR = /home/nour/Dijekstra

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nour/Dijekstra/bin

# Include any dependencies generated for this target.
include CMakeFiles/dijekstra_gcc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dijekstra_gcc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dijekstra_gcc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dijekstra_gcc.dir/flags.make

CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o: CMakeFiles/dijekstra_gcc.dir/flags.make
CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o: /home/nour/Dijekstra/dijekstra.c
CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o: CMakeFiles/dijekstra_gcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Dijekstra/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o -MF CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o.d -o CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o -c /home/nour/Dijekstra/dijekstra.c

CMakeFiles/dijekstra_gcc.dir/dijekstra.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dijekstra_gcc.dir/dijekstra.c.i"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Dijekstra/dijekstra.c > CMakeFiles/dijekstra_gcc.dir/dijekstra.c.i

CMakeFiles/dijekstra_gcc.dir/dijekstra.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dijekstra_gcc.dir/dijekstra.c.s"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Dijekstra/dijekstra.c -o CMakeFiles/dijekstra_gcc.dir/dijekstra.c.s

# Object files for target dijekstra_gcc
dijekstra_gcc_OBJECTS = \
"CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o"

# External object files for target dijekstra_gcc
dijekstra_gcc_EXTERNAL_OBJECTS =

dijekstra_gcc: CMakeFiles/dijekstra_gcc.dir/dijekstra.c.o
dijekstra_gcc: CMakeFiles/dijekstra_gcc.dir/build.make
dijekstra_gcc: CMakeFiles/dijekstra_gcc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nour/Dijekstra/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dijekstra_gcc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dijekstra_gcc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dijekstra_gcc.dir/build: dijekstra_gcc
.PHONY : CMakeFiles/dijekstra_gcc.dir/build

CMakeFiles/dijekstra_gcc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dijekstra_gcc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dijekstra_gcc.dir/clean

CMakeFiles/dijekstra_gcc.dir/depend:
	cd /home/nour/Dijekstra/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nour/Dijekstra /home/nour/Dijekstra /home/nour/Dijekstra/bin /home/nour/Dijekstra/bin /home/nour/Dijekstra/bin/CMakeFiles/dijekstra_gcc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dijekstra_gcc.dir/depend


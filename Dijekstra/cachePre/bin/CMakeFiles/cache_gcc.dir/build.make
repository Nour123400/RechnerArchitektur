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
CMAKE_SOURCE_DIR = /home/nour/Dijekstra/cachePre

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nour/Dijekstra/cachePre/bin

# Include any dependencies generated for this target.
include CMakeFiles/cache_gcc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cache_gcc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cache_gcc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cache_gcc.dir/flags.make

CMakeFiles/cache_gcc.dir/cache.c.o: CMakeFiles/cache_gcc.dir/flags.make
CMakeFiles/cache_gcc.dir/cache.c.o: /home/nour/Dijekstra/cachePre/cache.c
CMakeFiles/cache_gcc.dir/cache.c.o: CMakeFiles/cache_gcc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nour/Dijekstra/cachePre/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cache_gcc.dir/cache.c.o"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cache_gcc.dir/cache.c.o -MF CMakeFiles/cache_gcc.dir/cache.c.o.d -o CMakeFiles/cache_gcc.dir/cache.c.o -c /home/nour/Dijekstra/cachePre/cache.c

CMakeFiles/cache_gcc.dir/cache.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cache_gcc.dir/cache.c.i"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nour/Dijekstra/cachePre/cache.c > CMakeFiles/cache_gcc.dir/cache.c.i

CMakeFiles/cache_gcc.dir/cache.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cache_gcc.dir/cache.c.s"
	gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nour/Dijekstra/cachePre/cache.c -o CMakeFiles/cache_gcc.dir/cache.c.s

# Object files for target cache_gcc
cache_gcc_OBJECTS = \
"CMakeFiles/cache_gcc.dir/cache.c.o"

# External object files for target cache_gcc
cache_gcc_EXTERNAL_OBJECTS =

cache_gcc: CMakeFiles/cache_gcc.dir/cache.c.o
cache_gcc: CMakeFiles/cache_gcc.dir/build.make
cache_gcc: CMakeFiles/cache_gcc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nour/Dijekstra/cachePre/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cache_gcc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cache_gcc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cache_gcc.dir/build: cache_gcc
.PHONY : CMakeFiles/cache_gcc.dir/build

CMakeFiles/cache_gcc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cache_gcc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cache_gcc.dir/clean

CMakeFiles/cache_gcc.dir/depend:
	cd /home/nour/Dijekstra/cachePre/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nour/Dijekstra/cachePre /home/nour/Dijekstra/cachePre /home/nour/Dijekstra/cachePre/bin /home/nour/Dijekstra/cachePre/bin /home/nour/Dijekstra/cachePre/bin/CMakeFiles/cache_gcc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cache_gcc.dir/depend


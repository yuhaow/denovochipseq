# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /home/yuhao/software/bin/bin/cmake

# The command to remove a file.
RM = /home/yuhao/software/bin/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /home/yuhao/software/bin/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yuhao/chipSeq/software/seqan-trunk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuhao/chipSeq/software/seqan-trunk/build

# Include any dependencies generated for this target.
include core/tests/pipe/CMakeFiles/test_pipe.dir/depend.make

# Include the progress variables for this target.
include core/tests/pipe/CMakeFiles/test_pipe.dir/progress.make

# Include the compile flags for this target's objects.
include core/tests/pipe/CMakeFiles/test_pipe.dir/flags.make

core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o: core/tests/pipe/CMakeFiles/test_pipe.dir/flags.make
core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o: ../core/tests/pipe/test_pipe.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_pipe.dir/test_pipe.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/core/tests/pipe/test_pipe.cpp

core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_pipe.dir/test_pipe.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/core/tests/pipe/test_pipe.cpp > CMakeFiles/test_pipe.dir/test_pipe.cpp.i

core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_pipe.dir/test_pipe.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/core/tests/pipe/test_pipe.cpp -o CMakeFiles/test_pipe.dir/test_pipe.cpp.s

core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.requires:
.PHONY : core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.requires

core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.provides: core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.requires
	$(MAKE) -f core/tests/pipe/CMakeFiles/test_pipe.dir/build.make core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.provides.build
.PHONY : core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.provides

core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.provides.build: core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o

# Object files for target test_pipe
test_pipe_OBJECTS = \
"CMakeFiles/test_pipe.dir/test_pipe.cpp.o"

# External object files for target test_pipe
test_pipe_EXTERNAL_OBJECTS =

bin/test_pipe: core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o
bin/test_pipe: core/tests/pipe/CMakeFiles/test_pipe.dir/build.make
bin/test_pipe: core/tests/pipe/CMakeFiles/test_pipe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/test_pipe"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_pipe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/tests/pipe/CMakeFiles/test_pipe.dir/build: bin/test_pipe
.PHONY : core/tests/pipe/CMakeFiles/test_pipe.dir/build

core/tests/pipe/CMakeFiles/test_pipe.dir/requires: core/tests/pipe/CMakeFiles/test_pipe.dir/test_pipe.cpp.o.requires
.PHONY : core/tests/pipe/CMakeFiles/test_pipe.dir/requires

core/tests/pipe/CMakeFiles/test_pipe.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe && $(CMAKE_COMMAND) -P CMakeFiles/test_pipe.dir/cmake_clean.cmake
.PHONY : core/tests/pipe/CMakeFiles/test_pipe.dir/clean

core/tests/pipe/CMakeFiles/test_pipe.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/core/tests/pipe /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe/CMakeFiles/test_pipe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/tests/pipe/CMakeFiles/test_pipe.dir/depend


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
include core/tests/index/CMakeFiles/test_index_repeats.dir/depend.make

# Include the progress variables for this target.
include core/tests/index/CMakeFiles/test_index_repeats.dir/progress.make

# Include the compile flags for this target's objects.
include core/tests/index/CMakeFiles/test_index_repeats.dir/flags.make

core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o: core/tests/index/CMakeFiles/test_index_repeats.dir/flags.make
core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o: ../core/tests/index/test_index_repeats.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/core/tests/index/test_index_repeats.cpp

core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/core/tests/index/test_index_repeats.cpp > CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.i

core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/core/tests/index/test_index_repeats.cpp -o CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.s

core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.requires:
.PHONY : core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.requires

core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.provides: core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.requires
	$(MAKE) -f core/tests/index/CMakeFiles/test_index_repeats.dir/build.make core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.provides.build
.PHONY : core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.provides

core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.provides.build: core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o

# Object files for target test_index_repeats
test_index_repeats_OBJECTS = \
"CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o"

# External object files for target test_index_repeats
test_index_repeats_EXTERNAL_OBJECTS =

bin/test_index_repeats: core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o
bin/test_index_repeats: core/tests/index/CMakeFiles/test_index_repeats.dir/build.make
bin/test_index_repeats: core/tests/index/CMakeFiles/test_index_repeats.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/test_index_repeats"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_index_repeats.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/tests/index/CMakeFiles/test_index_repeats.dir/build: bin/test_index_repeats
.PHONY : core/tests/index/CMakeFiles/test_index_repeats.dir/build

core/tests/index/CMakeFiles/test_index_repeats.dir/requires: core/tests/index/CMakeFiles/test_index_repeats.dir/test_index_repeats.cpp.o.requires
.PHONY : core/tests/index/CMakeFiles/test_index_repeats.dir/requires

core/tests/index/CMakeFiles/test_index_repeats.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index && $(CMAKE_COMMAND) -P CMakeFiles/test_index_repeats.dir/cmake_clean.cmake
.PHONY : core/tests/index/CMakeFiles/test_index_repeats.dir/clean

core/tests/index/CMakeFiles/test_index_repeats.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/core/tests/index /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index/CMakeFiles/test_index_repeats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/tests/index/CMakeFiles/test_index_repeats.dir/depend


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
include core/tests/file/CMakeFiles/test_file.dir/depend.make

# Include the progress variables for this target.
include core/tests/file/CMakeFiles/test_file.dir/progress.make

# Include the compile flags for this target's objects.
include core/tests/file/CMakeFiles/test_file.dir/flags.make

core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o: core/tests/file/CMakeFiles/test_file.dir/flags.make
core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o: ../core/tests/file/test_file.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_file.dir/test_file.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/core/tests/file/test_file.cpp

core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_file.dir/test_file.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/core/tests/file/test_file.cpp > CMakeFiles/test_file.dir/test_file.cpp.i

core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_file.dir/test_file.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/core/tests/file/test_file.cpp -o CMakeFiles/test_file.dir/test_file.cpp.s

core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.requires:
.PHONY : core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.requires

core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.provides: core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.requires
	$(MAKE) -f core/tests/file/CMakeFiles/test_file.dir/build.make core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.provides.build
.PHONY : core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.provides

core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.provides.build: core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o

# Object files for target test_file
test_file_OBJECTS = \
"CMakeFiles/test_file.dir/test_file.cpp.o"

# External object files for target test_file
test_file_EXTERNAL_OBJECTS =

bin/test_file: core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o
bin/test_file: core/tests/file/CMakeFiles/test_file.dir/build.make
bin/test_file: core/tests/file/CMakeFiles/test_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/test_file"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/tests/file/CMakeFiles/test_file.dir/build: bin/test_file
.PHONY : core/tests/file/CMakeFiles/test_file.dir/build

core/tests/file/CMakeFiles/test_file.dir/requires: core/tests/file/CMakeFiles/test_file.dir/test_file.cpp.o.requires
.PHONY : core/tests/file/CMakeFiles/test_file.dir/requires

core/tests/file/CMakeFiles/test_file.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file && $(CMAKE_COMMAND) -P CMakeFiles/test_file.dir/cmake_clean.cmake
.PHONY : core/tests/file/CMakeFiles/test_file.dir/clean

core/tests/file/CMakeFiles/test_file.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/core/tests/file /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file/CMakeFiles/test_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/tests/file/CMakeFiles/test_file.dir/depend

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
include core/tests/swift_local/CMakeFiles/test_find_swift.dir/depend.make

# Include the progress variables for this target.
include core/tests/swift_local/CMakeFiles/test_find_swift.dir/progress.make

# Include the compile flags for this target's objects.
include core/tests/swift_local/CMakeFiles/test_find_swift.dir/flags.make

core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o: core/tests/swift_local/CMakeFiles/test_find_swift.dir/flags.make
core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o: ../core/tests/swift_local/test_find_swift.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/core/tests/swift_local/test_find_swift.cpp

core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_find_swift.dir/test_find_swift.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/core/tests/swift_local/test_find_swift.cpp > CMakeFiles/test_find_swift.dir/test_find_swift.cpp.i

core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_find_swift.dir/test_find_swift.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/core/tests/swift_local/test_find_swift.cpp -o CMakeFiles/test_find_swift.dir/test_find_swift.cpp.s

core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.requires:
.PHONY : core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.requires

core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.provides: core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.requires
	$(MAKE) -f core/tests/swift_local/CMakeFiles/test_find_swift.dir/build.make core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.provides.build
.PHONY : core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.provides

core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.provides.build: core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o

# Object files for target test_find_swift
test_find_swift_OBJECTS = \
"CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o"

# External object files for target test_find_swift
test_find_swift_EXTERNAL_OBJECTS =

bin/test_find_swift: core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o
bin/test_find_swift: core/tests/swift_local/CMakeFiles/test_find_swift.dir/build.make
bin/test_find_swift: core/tests/swift_local/CMakeFiles/test_find_swift.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/test_find_swift"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_find_swift.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/tests/swift_local/CMakeFiles/test_find_swift.dir/build: bin/test_find_swift
.PHONY : core/tests/swift_local/CMakeFiles/test_find_swift.dir/build

core/tests/swift_local/CMakeFiles/test_find_swift.dir/requires: core/tests/swift_local/CMakeFiles/test_find_swift.dir/test_find_swift.cpp.o.requires
.PHONY : core/tests/swift_local/CMakeFiles/test_find_swift.dir/requires

core/tests/swift_local/CMakeFiles/test_find_swift.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local && $(CMAKE_COMMAND) -P CMakeFiles/test_find_swift.dir/cmake_clean.cmake
.PHONY : core/tests/swift_local/CMakeFiles/test_find_swift.dir/clean

core/tests/swift_local/CMakeFiles/test_find_swift.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/core/tests/swift_local /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local /home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local/CMakeFiles/test_find_swift.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/tests/swift_local/CMakeFiles/test_find_swift.dir/depend


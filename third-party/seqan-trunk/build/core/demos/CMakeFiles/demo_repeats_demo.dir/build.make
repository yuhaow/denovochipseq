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
include core/demos/CMakeFiles/demo_repeats_demo.dir/depend.make

# Include the progress variables for this target.
include core/demos/CMakeFiles/demo_repeats_demo.dir/progress.make

# Include the compile flags for this target's objects.
include core/demos/CMakeFiles/demo_repeats_demo.dir/flags.make

core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o: core/demos/CMakeFiles/demo_repeats_demo.dir/flags.make
core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o: ../core/demos/repeats_demo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/demos && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/core/demos/repeats_demo.cpp

core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/core/demos/repeats_demo.cpp > CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.i

core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/core/demos/repeats_demo.cpp -o CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.s

core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.requires:
.PHONY : core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.requires

core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.provides: core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.requires
	$(MAKE) -f core/demos/CMakeFiles/demo_repeats_demo.dir/build.make core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.provides.build
.PHONY : core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.provides

core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.provides.build: core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o

# Object files for target demo_repeats_demo
demo_repeats_demo_OBJECTS = \
"CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o"

# External object files for target demo_repeats_demo
demo_repeats_demo_EXTERNAL_OBJECTS =

bin/demo_repeats_demo: core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o
bin/demo_repeats_demo: core/demos/CMakeFiles/demo_repeats_demo.dir/build.make
bin/demo_repeats_demo: /usr/lib64/libz.so
bin/demo_repeats_demo: /usr/lib64/libbz2.so
bin/demo_repeats_demo: core/demos/CMakeFiles/demo_repeats_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/demo_repeats_demo"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/demos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_repeats_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/demos/CMakeFiles/demo_repeats_demo.dir/build: bin/demo_repeats_demo
.PHONY : core/demos/CMakeFiles/demo_repeats_demo.dir/build

core/demos/CMakeFiles/demo_repeats_demo.dir/requires: core/demos/CMakeFiles/demo_repeats_demo.dir/repeats_demo.cpp.o.requires
.PHONY : core/demos/CMakeFiles/demo_repeats_demo.dir/requires

core/demos/CMakeFiles/demo_repeats_demo.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/core/demos && $(CMAKE_COMMAND) -P CMakeFiles/demo_repeats_demo.dir/cmake_clean.cmake
.PHONY : core/demos/CMakeFiles/demo_repeats_demo.dir/clean

core/demos/CMakeFiles/demo_repeats_demo.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/core/demos /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/core/demos /home/yuhao/chipSeq/software/seqan-trunk/build/core/demos/CMakeFiles/demo_repeats_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/demos/CMakeFiles/demo_repeats_demo.dir/depend


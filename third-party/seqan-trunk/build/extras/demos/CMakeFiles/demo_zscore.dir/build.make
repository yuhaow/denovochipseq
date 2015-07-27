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
include extras/demos/CMakeFiles/demo_zscore.dir/depend.make

# Include the progress variables for this target.
include extras/demos/CMakeFiles/demo_zscore.dir/progress.make

# Include the compile flags for this target's objects.
include extras/demos/CMakeFiles/demo_zscore.dir/flags.make

extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o: extras/demos/CMakeFiles/demo_zscore.dir/flags.make
extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o: ../extras/demos/zscore.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/demo_zscore.dir/zscore.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/extras/demos/zscore.cpp

extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_zscore.dir/zscore.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/extras/demos/zscore.cpp > CMakeFiles/demo_zscore.dir/zscore.cpp.i

extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_zscore.dir/zscore.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/extras/demos/zscore.cpp -o CMakeFiles/demo_zscore.dir/zscore.cpp.s

extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.requires:
.PHONY : extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.requires

extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.provides: extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.requires
	$(MAKE) -f extras/demos/CMakeFiles/demo_zscore.dir/build.make extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.provides.build
.PHONY : extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.provides

extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.provides.build: extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o

# Object files for target demo_zscore
demo_zscore_OBJECTS = \
"CMakeFiles/demo_zscore.dir/zscore.cpp.o"

# External object files for target demo_zscore
demo_zscore_EXTERNAL_OBJECTS =

bin/demo_zscore: extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o
bin/demo_zscore: extras/demos/CMakeFiles/demo_zscore.dir/build.make
bin/demo_zscore: /usr/lib64/libz.so
bin/demo_zscore: /usr/lib64/libbz2.so
bin/demo_zscore: extras/demos/CMakeFiles/demo_zscore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/demo_zscore"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_zscore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extras/demos/CMakeFiles/demo_zscore.dir/build: bin/demo_zscore
.PHONY : extras/demos/CMakeFiles/demo_zscore.dir/build

extras/demos/CMakeFiles/demo_zscore.dir/requires: extras/demos/CMakeFiles/demo_zscore.dir/zscore.cpp.o.requires
.PHONY : extras/demos/CMakeFiles/demo_zscore.dir/requires

extras/demos/CMakeFiles/demo_zscore.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && $(CMAKE_COMMAND) -P CMakeFiles/demo_zscore.dir/cmake_clean.cmake
.PHONY : extras/demos/CMakeFiles/demo_zscore.dir/clean

extras/demos/CMakeFiles/demo_zscore.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/extras/demos /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos/CMakeFiles/demo_zscore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extras/demos/CMakeFiles/demo_zscore.dir/depend


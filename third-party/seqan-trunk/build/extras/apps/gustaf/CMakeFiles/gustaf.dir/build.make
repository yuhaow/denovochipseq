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
include extras/apps/gustaf/CMakeFiles/gustaf.dir/depend.make

# Include the progress variables for this target.
include extras/apps/gustaf/CMakeFiles/gustaf.dir/progress.make

# Include the compile flags for this target's objects.
include extras/apps/gustaf/CMakeFiles/gustaf.dir/flags.make

extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o: extras/apps/gustaf/CMakeFiles/gustaf.dir/flags.make
extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o: ../extras/apps/gustaf/gustaf.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/gustaf && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gustaf.dir/gustaf.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/gustaf/gustaf.cpp

extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gustaf.dir/gustaf.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/gustaf && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/gustaf/gustaf.cpp > CMakeFiles/gustaf.dir/gustaf.cpp.i

extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gustaf.dir/gustaf.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/gustaf && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/gustaf/gustaf.cpp -o CMakeFiles/gustaf.dir/gustaf.cpp.s

extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.requires:
.PHONY : extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.requires

extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.provides: extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.requires
	$(MAKE) -f extras/apps/gustaf/CMakeFiles/gustaf.dir/build.make extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.provides.build
.PHONY : extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.provides

extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.provides.build: extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o

# Object files for target gustaf
gustaf_OBJECTS = \
"CMakeFiles/gustaf.dir/gustaf.cpp.o"

# External object files for target gustaf
gustaf_EXTERNAL_OBJECTS =

bin/gustaf: extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o
bin/gustaf: extras/apps/gustaf/CMakeFiles/gustaf.dir/build.make
bin/gustaf: /usr/lib64/libz.so
bin/gustaf: extras/apps/gustaf/CMakeFiles/gustaf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/gustaf"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/gustaf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gustaf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extras/apps/gustaf/CMakeFiles/gustaf.dir/build: bin/gustaf
.PHONY : extras/apps/gustaf/CMakeFiles/gustaf.dir/build

extras/apps/gustaf/CMakeFiles/gustaf.dir/requires: extras/apps/gustaf/CMakeFiles/gustaf.dir/gustaf.cpp.o.requires
.PHONY : extras/apps/gustaf/CMakeFiles/gustaf.dir/requires

extras/apps/gustaf/CMakeFiles/gustaf.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/gustaf && $(CMAKE_COMMAND) -P CMakeFiles/gustaf.dir/cmake_clean.cmake
.PHONY : extras/apps/gustaf/CMakeFiles/gustaf.dir/clean

extras/apps/gustaf/CMakeFiles/gustaf.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/gustaf /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/gustaf /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/gustaf/CMakeFiles/gustaf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extras/apps/gustaf/CMakeFiles/gustaf.dir/depend

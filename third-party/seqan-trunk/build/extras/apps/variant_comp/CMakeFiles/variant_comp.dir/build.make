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
include extras/apps/variant_comp/CMakeFiles/variant_comp.dir/depend.make

# Include the progress variables for this target.
include extras/apps/variant_comp/CMakeFiles/variant_comp.dir/progress.make

# Include the compile flags for this target's objects.
include extras/apps/variant_comp/CMakeFiles/variant_comp.dir/flags.make

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o: extras/apps/variant_comp/CMakeFiles/variant_comp.dir/flags.make
extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o: ../extras/apps/variant_comp/variant_comp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/variant_comp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/variant_comp.dir/variant_comp.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/variant_comp/variant_comp.cpp

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/variant_comp.dir/variant_comp.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/variant_comp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/variant_comp/variant_comp.cpp > CMakeFiles/variant_comp.dir/variant_comp.cpp.i

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/variant_comp.dir/variant_comp.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/variant_comp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/variant_comp/variant_comp.cpp -o CMakeFiles/variant_comp.dir/variant_comp.cpp.s

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.requires:
.PHONY : extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.requires

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.provides: extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.requires
	$(MAKE) -f extras/apps/variant_comp/CMakeFiles/variant_comp.dir/build.make extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.provides.build
.PHONY : extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.provides

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.provides.build: extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o

# Object files for target variant_comp
variant_comp_OBJECTS = \
"CMakeFiles/variant_comp.dir/variant_comp.cpp.o"

# External object files for target variant_comp
variant_comp_EXTERNAL_OBJECTS =

bin/variant_comp: extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o
bin/variant_comp: extras/apps/variant_comp/CMakeFiles/variant_comp.dir/build.make
bin/variant_comp: extras/apps/variant_comp/CMakeFiles/variant_comp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../../bin/variant_comp"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/variant_comp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/variant_comp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extras/apps/variant_comp/CMakeFiles/variant_comp.dir/build: bin/variant_comp
.PHONY : extras/apps/variant_comp/CMakeFiles/variant_comp.dir/build

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/requires: extras/apps/variant_comp/CMakeFiles/variant_comp.dir/variant_comp.cpp.o.requires
.PHONY : extras/apps/variant_comp/CMakeFiles/variant_comp.dir/requires

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/variant_comp && $(CMAKE_COMMAND) -P CMakeFiles/variant_comp.dir/cmake_clean.cmake
.PHONY : extras/apps/variant_comp/CMakeFiles/variant_comp.dir/clean

extras/apps/variant_comp/CMakeFiles/variant_comp.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/extras/apps/variant_comp /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/variant_comp /home/yuhao/chipSeq/software/seqan-trunk/build/extras/apps/variant_comp/CMakeFiles/variant_comp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extras/apps/variant_comp/CMakeFiles/variant_comp.dir/depend

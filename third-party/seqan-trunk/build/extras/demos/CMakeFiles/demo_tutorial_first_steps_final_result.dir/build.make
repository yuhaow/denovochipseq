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
include extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/depend.make

# Include the progress variables for this target.
include extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/progress.make

# Include the compile flags for this target's objects.
include extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/flags.make

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o: extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/flags.make
extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o: ../extras/demos/tutorial/first_steps/final_result.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yuhao/chipSeq/software/seqan-trunk/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o -c /home/yuhao/chipSeq/software/seqan-trunk/extras/demos/tutorial/first_steps/final_result.cpp

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.i"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yuhao/chipSeq/software/seqan-trunk/extras/demos/tutorial/first_steps/final_result.cpp > CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.i

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.s"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yuhao/chipSeq/software/seqan-trunk/extras/demos/tutorial/first_steps/final_result.cpp -o CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.s

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.requires:
.PHONY : extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.requires

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.provides: extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.requires
	$(MAKE) -f extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/build.make extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.provides.build
.PHONY : extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.provides

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.provides.build: extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o

# Object files for target demo_tutorial_first_steps_final_result
demo_tutorial_first_steps_final_result_OBJECTS = \
"CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o"

# External object files for target demo_tutorial_first_steps_final_result
demo_tutorial_first_steps_final_result_EXTERNAL_OBJECTS =

bin/demo_tutorial_first_steps_final_result: extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o
bin/demo_tutorial_first_steps_final_result: extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/build.make
bin/demo_tutorial_first_steps_final_result: /usr/lib64/libz.so
bin/demo_tutorial_first_steps_final_result: /usr/lib64/libbz2.so
bin/demo_tutorial_first_steps_final_result: extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/demo_tutorial_first_steps_final_result"
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_tutorial_first_steps_final_result.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/build: bin/demo_tutorial_first_steps_final_result
.PHONY : extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/build

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/requires: extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/tutorial/first_steps/final_result.cpp.o.requires
.PHONY : extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/requires

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/clean:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos && $(CMAKE_COMMAND) -P CMakeFiles/demo_tutorial_first_steps_final_result.dir/cmake_clean.cmake
.PHONY : extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/clean

extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/depend:
	cd /home/yuhao/chipSeq/software/seqan-trunk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuhao/chipSeq/software/seqan-trunk /home/yuhao/chipSeq/software/seqan-trunk/extras/demos /home/yuhao/chipSeq/software/seqan-trunk/build /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos /home/yuhao/chipSeq/software/seqan-trunk/build/extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extras/demos/CMakeFiles/demo_tutorial_first_steps_final_result.dir/depend


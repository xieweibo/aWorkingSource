# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /home/xukai/Applications/cmake-3.7.1/bin/cmake

# The command to remove a file.
RM = /home/xukai/Applications/cmake-3.7.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops

# Include any dependencies generated for this target.
include SphereMaker/CMakeFiles/SphereMaker.dir/depend.make

# Include the progress variables for this target.
include SphereMaker/CMakeFiles/SphereMaker.dir/progress.make

# Include the compile flags for this target's objects.
include SphereMaker/CMakeFiles/SphereMaker.dir/flags.make

SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o: SphereMaker/CMakeFiles/SphereMaker.dir/flags.make
SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o: /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/SphereMaker/src/op.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/SphereMaker && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SphereMaker.dir/src/op.cpp.o -c /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/SphereMaker/src/op.cpp

SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SphereMaker.dir/src/op.cpp.i"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/SphereMaker && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/SphereMaker/src/op.cpp > CMakeFiles/SphereMaker.dir/src/op.cpp.i

SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SphereMaker.dir/src/op.cpp.s"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/SphereMaker && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/SphereMaker/src/op.cpp -o CMakeFiles/SphereMaker.dir/src/op.cpp.s

SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.requires:

.PHONY : SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.requires

SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.provides: SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.requires
	$(MAKE) -f SphereMaker/CMakeFiles/SphereMaker.dir/build.make SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.provides.build
.PHONY : SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.provides

SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.provides.build: SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o


# Object files for target SphereMaker
SphereMaker_OBJECTS = \
"CMakeFiles/SphereMaker.dir/src/op.cpp.o"

# External object files for target SphereMaker
SphereMaker_EXTERNAL_OBJECTS =

SphereMaker/SphereMaker.so: SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o
SphereMaker/SphereMaker.so: SphereMaker/CMakeFiles/SphereMaker.dir/build.make
SphereMaker/SphereMaker.so: libfoundry.katana.FnAttribute.a
SphereMaker/SphereMaker.so: libfoundry.katana.FnGeolibOpPlugin.a
SphereMaker/SphereMaker.so: libfoundry.katana.FnGeolibServices.a
SphereMaker/SphereMaker.so: libfoundry.katana.FnGeolibOpPlugin.a
SphereMaker/SphereMaker.so: libfoundry.katana.FnAsset.a
SphereMaker/SphereMaker.so: libfoundry.katana.FnAttribute.a
SphereMaker/SphereMaker.so: libfoundry.katana.pystring.a
SphereMaker/SphereMaker.so: libfoundry.katana.FnPluginManager.a
SphereMaker/SphereMaker.so: libfoundry.katana.FnPluginSystem.a
SphereMaker/SphereMaker.so: SphereMaker/CMakeFiles/SphereMaker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module SphereMaker.so"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/SphereMaker && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SphereMaker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SphereMaker/CMakeFiles/SphereMaker.dir/build: SphereMaker/SphereMaker.so

.PHONY : SphereMaker/CMakeFiles/SphereMaker.dir/build

SphereMaker/CMakeFiles/SphereMaker.dir/requires: SphereMaker/CMakeFiles/SphereMaker.dir/src/op.cpp.o.requires

.PHONY : SphereMaker/CMakeFiles/SphereMaker.dir/requires

SphereMaker/CMakeFiles/SphereMaker.dir/clean:
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/SphereMaker && $(CMAKE_COMMAND) -P CMakeFiles/SphereMaker.dir/cmake_clean.cmake
.PHONY : SphereMaker/CMakeFiles/SphereMaker.dir/clean

SphereMaker/CMakeFiles/SphereMaker.dir/depend:
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/SphereMaker /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/SphereMaker /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/SphereMaker/CMakeFiles/SphereMaker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : SphereMaker/CMakeFiles/SphereMaker.dir/depend

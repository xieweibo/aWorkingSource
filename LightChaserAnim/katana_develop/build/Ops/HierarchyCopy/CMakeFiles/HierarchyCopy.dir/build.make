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
include HierarchyCopy/CMakeFiles/HierarchyCopy.dir/depend.make

# Include the progress variables for this target.
include HierarchyCopy/CMakeFiles/HierarchyCopy.dir/progress.make

# Include the compile flags for this target's objects.
include HierarchyCopy/CMakeFiles/HierarchyCopy.dir/flags.make

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o: HierarchyCopy/CMakeFiles/HierarchyCopy.dir/flags.make
HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o: /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/HierarchyCopy/src/op.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/HierarchyCopy && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HierarchyCopy.dir/src/op.cpp.o -c /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/HierarchyCopy/src/op.cpp

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HierarchyCopy.dir/src/op.cpp.i"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/HierarchyCopy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/HierarchyCopy/src/op.cpp > CMakeFiles/HierarchyCopy.dir/src/op.cpp.i

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HierarchyCopy.dir/src/op.cpp.s"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/HierarchyCopy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/HierarchyCopy/src/op.cpp -o CMakeFiles/HierarchyCopy.dir/src/op.cpp.s

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.requires:

.PHONY : HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.requires

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.provides: HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.requires
	$(MAKE) -f HierarchyCopy/CMakeFiles/HierarchyCopy.dir/build.make HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.provides.build
.PHONY : HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.provides

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.provides.build: HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o


# Object files for target HierarchyCopy
HierarchyCopy_OBJECTS = \
"CMakeFiles/HierarchyCopy.dir/src/op.cpp.o"

# External object files for target HierarchyCopy
HierarchyCopy_EXTERNAL_OBJECTS =

HierarchyCopy/HierarchyCopy.so: HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o
HierarchyCopy/HierarchyCopy.so: HierarchyCopy/CMakeFiles/HierarchyCopy.dir/build.make
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.FnAttribute.a
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.FnGeolibOpPlugin.a
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.pystring.a
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.FnAsset.a
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.FnAttribute.a
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.pystring.a
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.FnPluginManager.a
HierarchyCopy/HierarchyCopy.so: libfoundry.katana.FnPluginSystem.a
HierarchyCopy/HierarchyCopy.so: HierarchyCopy/CMakeFiles/HierarchyCopy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module HierarchyCopy.so"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/HierarchyCopy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HierarchyCopy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
HierarchyCopy/CMakeFiles/HierarchyCopy.dir/build: HierarchyCopy/HierarchyCopy.so

.PHONY : HierarchyCopy/CMakeFiles/HierarchyCopy.dir/build

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/requires: HierarchyCopy/CMakeFiles/HierarchyCopy.dir/src/op.cpp.o.requires

.PHONY : HierarchyCopy/CMakeFiles/HierarchyCopy.dir/requires

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/clean:
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/HierarchyCopy && $(CMAKE_COMMAND) -P CMakeFiles/HierarchyCopy.dir/cmake_clean.cmake
.PHONY : HierarchyCopy/CMakeFiles/HierarchyCopy.dir/clean

HierarchyCopy/CMakeFiles/HierarchyCopy.dir/depend:
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/HierarchyCopy /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/HierarchyCopy /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/HierarchyCopy/CMakeFiles/HierarchyCopy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : HierarchyCopy/CMakeFiles/HierarchyCopy.dir/depend

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
include GeoScaler/CMakeFiles/GeoScaler.dir/depend.make

# Include the progress variables for this target.
include GeoScaler/CMakeFiles/GeoScaler.dir/progress.make

# Include the compile flags for this target's objects.
include GeoScaler/CMakeFiles/GeoScaler.dir/flags.make

GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o: GeoScaler/CMakeFiles/GeoScaler.dir/flags.make
GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o: /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/GeoScaler/src/op.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/GeoScaler && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GeoScaler.dir/src/op.cpp.o -c /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/GeoScaler/src/op.cpp

GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GeoScaler.dir/src/op.cpp.i"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/GeoScaler && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/GeoScaler/src/op.cpp > CMakeFiles/GeoScaler.dir/src/op.cpp.i

GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GeoScaler.dir/src/op.cpp.s"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/GeoScaler && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/GeoScaler/src/op.cpp -o CMakeFiles/GeoScaler.dir/src/op.cpp.s

GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.requires:

.PHONY : GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.requires

GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.provides: GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.requires
	$(MAKE) -f GeoScaler/CMakeFiles/GeoScaler.dir/build.make GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.provides.build
.PHONY : GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.provides

GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.provides.build: GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o


# Object files for target GeoScaler
GeoScaler_OBJECTS = \
"CMakeFiles/GeoScaler.dir/src/op.cpp.o"

# External object files for target GeoScaler
GeoScaler_EXTERNAL_OBJECTS =

GeoScaler/GeoScaler.so: GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o
GeoScaler/GeoScaler.so: GeoScaler/CMakeFiles/GeoScaler.dir/build.make
GeoScaler/GeoScaler.so: libfoundry.katana.FnAttribute.a
GeoScaler/GeoScaler.so: libfoundry.katana.FnGeolibOpPlugin.a
GeoScaler/GeoScaler.so: libfoundry.katana.FnGeolibServices.a
GeoScaler/GeoScaler.so: libfoundry.katana.FnGeolibOpPlugin.a
GeoScaler/GeoScaler.so: libfoundry.katana.FnAsset.a
GeoScaler/GeoScaler.so: libfoundry.katana.FnAttribute.a
GeoScaler/GeoScaler.so: libfoundry.katana.pystring.a
GeoScaler/GeoScaler.so: libfoundry.katana.FnPluginManager.a
GeoScaler/GeoScaler.so: libfoundry.katana.FnPluginSystem.a
GeoScaler/GeoScaler.so: GeoScaler/CMakeFiles/GeoScaler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module GeoScaler.so"
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/GeoScaler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GeoScaler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
GeoScaler/CMakeFiles/GeoScaler.dir/build: GeoScaler/GeoScaler.so

.PHONY : GeoScaler/CMakeFiles/GeoScaler.dir/build

GeoScaler/CMakeFiles/GeoScaler.dir/requires: GeoScaler/CMakeFiles/GeoScaler.dir/src/op.cpp.o.requires

.PHONY : GeoScaler/CMakeFiles/GeoScaler.dir/requires

GeoScaler/CMakeFiles/GeoScaler.dir/clean:
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/GeoScaler && $(CMAKE_COMMAND) -P CMakeFiles/GeoScaler.dir/cmake_clean.cmake
.PHONY : GeoScaler/CMakeFiles/GeoScaler.dir/clean

GeoScaler/CMakeFiles/GeoScaler.dir/depend:
	cd /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops /home/xukai/Documents/TestProgramFactory/katana_develop/source/Ops/GeoScaler /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/GeoScaler /home/xukai/Documents/TestProgramFactory/katana_develop/build/Ops/GeoScaler/CMakeFiles/GeoScaler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : GeoScaler/CMakeFiles/GeoScaler.dir/depend

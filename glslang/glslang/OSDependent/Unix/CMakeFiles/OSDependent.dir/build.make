# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rylee/src/glslang

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rylee/src/glslang

# Include any dependencies generated for this target.
include glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/compiler_depend.make

# Include the progress variables for this target.
include glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/progress.make

# Include the compile flags for this target's objects.
include glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/flags.make

glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o: glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/flags.make
glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o: glslang/OSDependent/Unix/ossource.cpp
glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o: glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rylee/src/glslang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o"
	cd /Users/rylee/src/glslang/glslang/OSDependent/Unix && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o -MF CMakeFiles/OSDependent.dir/ossource.cpp.o.d -o CMakeFiles/OSDependent.dir/ossource.cpp.o -c /Users/rylee/src/glslang/glslang/OSDependent/Unix/ossource.cpp

glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OSDependent.dir/ossource.cpp.i"
	cd /Users/rylee/src/glslang/glslang/OSDependent/Unix && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rylee/src/glslang/glslang/OSDependent/Unix/ossource.cpp > CMakeFiles/OSDependent.dir/ossource.cpp.i

glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OSDependent.dir/ossource.cpp.s"
	cd /Users/rylee/src/glslang/glslang/OSDependent/Unix && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rylee/src/glslang/glslang/OSDependent/Unix/ossource.cpp -o CMakeFiles/OSDependent.dir/ossource.cpp.s

# Object files for target OSDependent
OSDependent_OBJECTS = \
"CMakeFiles/OSDependent.dir/ossource.cpp.o"

# External object files for target OSDependent
OSDependent_EXTERNAL_OBJECTS =

glslang/OSDependent/Unix/libOSDependent.a: glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/ossource.cpp.o
glslang/OSDependent/Unix/libOSDependent.a: glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/build.make
glslang/OSDependent/Unix/libOSDependent.a: glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/rylee/src/glslang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libOSDependent.a"
	cd /Users/rylee/src/glslang/glslang/OSDependent/Unix && $(CMAKE_COMMAND) -P CMakeFiles/OSDependent.dir/cmake_clean_target.cmake
	cd /Users/rylee/src/glslang/glslang/OSDependent/Unix && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OSDependent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/build: glslang/OSDependent/Unix/libOSDependent.a
.PHONY : glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/build

glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/clean:
	cd /Users/rylee/src/glslang/glslang/OSDependent/Unix && $(CMAKE_COMMAND) -P CMakeFiles/OSDependent.dir/cmake_clean.cmake
.PHONY : glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/clean

glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/depend:
	cd /Users/rylee/src/glslang && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rylee/src/glslang /Users/rylee/src/glslang/glslang/OSDependent/Unix /Users/rylee/src/glslang /Users/rylee/src/glslang/glslang/OSDependent/Unix /Users/rylee/src/glslang/glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : glslang/OSDependent/Unix/CMakeFiles/OSDependent.dir/depend


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
include StandAlone/CMakeFiles/glslang-standalone.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include StandAlone/CMakeFiles/glslang-standalone.dir/compiler_depend.make

# Include the progress variables for this target.
include StandAlone/CMakeFiles/glslang-standalone.dir/progress.make

# Include the compile flags for this target's objects.
include StandAlone/CMakeFiles/glslang-standalone.dir/flags.make

include/glslang/glsl_intrinsic_header.h: gen_extension_headers.py
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/rylee/src/glslang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating /Users/rylee/src/glslang/include/glslang/glsl_intrinsic_header.h"
	cd /Users/rylee/src/glslang/StandAlone && /opt/homebrew/Frameworks/Python.framework/Versions/3.11/bin/python3.11 /Users/rylee/src/glslang/StandAlone/../gen_extension_headers.py -i /Users/rylee/src/glslang/StandAlone/../glslang/ExtensionHeaders -o /Users/rylee/src/glslang/include/glslang/glsl_intrinsic_header.h

StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o: StandAlone/CMakeFiles/glslang-standalone.dir/flags.make
StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o: StandAlone/StandAlone.cpp
StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o: StandAlone/CMakeFiles/glslang-standalone.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rylee/src/glslang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o"
	cd /Users/rylee/src/glslang/StandAlone && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o -MF CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o.d -o CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o -c /Users/rylee/src/glslang/StandAlone/StandAlone.cpp

StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/glslang-standalone.dir/StandAlone.cpp.i"
	cd /Users/rylee/src/glslang/StandAlone && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rylee/src/glslang/StandAlone/StandAlone.cpp > CMakeFiles/glslang-standalone.dir/StandAlone.cpp.i

StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/glslang-standalone.dir/StandAlone.cpp.s"
	cd /Users/rylee/src/glslang/StandAlone && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rylee/src/glslang/StandAlone/StandAlone.cpp -o CMakeFiles/glslang-standalone.dir/StandAlone.cpp.s

# Object files for target glslang-standalone
glslang__standalone_OBJECTS = \
"CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o"

# External object files for target glslang-standalone
glslang__standalone_EXTERNAL_OBJECTS =

StandAlone/glslang: StandAlone/CMakeFiles/glslang-standalone.dir/StandAlone.cpp.o
StandAlone/glslang: StandAlone/CMakeFiles/glslang-standalone.dir/build.make
StandAlone/glslang: glslang/libglslang.a
StandAlone/glslang: glslang/OSDependent/Unix/libOSDependent.a
StandAlone/glslang: SPIRV/libSPIRV.a
StandAlone/glslang: glslang/libglslang-default-resource-limits.a
StandAlone/glslang: glslang/libMachineIndependent.a
StandAlone/glslang: glslang/OSDependent/Unix/libOSDependent.a
StandAlone/glslang: OGLCompilersDLL/libOGLCompiler.a
StandAlone/glslang: glslang/libGenericCodeGen.a
StandAlone/glslang: StandAlone/CMakeFiles/glslang-standalone.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/rylee/src/glslang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable glslang"
	cd /Users/rylee/src/glslang/StandAlone && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glslang-standalone.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/rylee/src/glslang/StandAlone && /opt/homebrew/Cellar/cmake/3.27.2/bin/cmake -E create_symlink glslang glslangValidator

# Rule to build all files generated by this target.
StandAlone/CMakeFiles/glslang-standalone.dir/build: StandAlone/glslang
.PHONY : StandAlone/CMakeFiles/glslang-standalone.dir/build

StandAlone/CMakeFiles/glslang-standalone.dir/clean:
	cd /Users/rylee/src/glslang/StandAlone && $(CMAKE_COMMAND) -P CMakeFiles/glslang-standalone.dir/cmake_clean.cmake
.PHONY : StandAlone/CMakeFiles/glslang-standalone.dir/clean

StandAlone/CMakeFiles/glslang-standalone.dir/depend: include/glslang/glsl_intrinsic_header.h
	cd /Users/rylee/src/glslang && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rylee/src/glslang /Users/rylee/src/glslang/StandAlone /Users/rylee/src/glslang /Users/rylee/src/glslang/StandAlone /Users/rylee/src/glslang/StandAlone/CMakeFiles/glslang-standalone.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : StandAlone/CMakeFiles/glslang-standalone.dir/depend

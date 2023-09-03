# Install script for directory: /Users/rylee/src/glslang/SPIRV

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/rylee/src/glslang/SPIRV/libSPVRemapper.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSPVRemapper.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSPVRemapper.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSPVRemapper.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/rylee/src/glslang/SPIRV/libSPIRV.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSPIRV.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSPIRV.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSPIRV.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/Users/rylee/src/glslang/SPIRV/SPVRemapperTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake" TYPE FILE FILES "/Users/rylee/src/glslang/SPIRV/SPIRVTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/glslang/SPIRV" TYPE FILE FILES
    "/Users/rylee/src/glslang/SPIRV/bitutils.h"
    "/Users/rylee/src/glslang/SPIRV/spirv.hpp"
    "/Users/rylee/src/glslang/SPIRV/GLSL.std.450.h"
    "/Users/rylee/src/glslang/SPIRV/GLSL.ext.EXT.h"
    "/Users/rylee/src/glslang/SPIRV/GLSL.ext.KHR.h"
    "/Users/rylee/src/glslang/SPIRV/GlslangToSpv.h"
    "/Users/rylee/src/glslang/SPIRV/hex_float.h"
    "/Users/rylee/src/glslang/SPIRV/Logger.h"
    "/Users/rylee/src/glslang/SPIRV/SpvBuilder.h"
    "/Users/rylee/src/glslang/SPIRV/spvIR.h"
    "/Users/rylee/src/glslang/SPIRV/doc.h"
    "/Users/rylee/src/glslang/SPIRV/SpvTools.h"
    "/Users/rylee/src/glslang/SPIRV/disassemble.h"
    "/Users/rylee/src/glslang/SPIRV/GLSL.ext.AMD.h"
    "/Users/rylee/src/glslang/SPIRV/GLSL.ext.NV.h"
    "/Users/rylee/src/glslang/SPIRV/GLSL.ext.ARM.h"
    "/Users/rylee/src/glslang/SPIRV/NonSemanticDebugPrintf.h"
    "/Users/rylee/src/glslang/SPIRV/NonSemanticShaderDebugInfo100.h"
    "/Users/rylee/src/glslang/SPIRV/SPVRemapper.h"
    "/Users/rylee/src/glslang/SPIRV/doc.h"
    )
endif()


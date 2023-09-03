//  Copyright (C) 2020 The Khronos Group Inc.
//
//  All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions
//  are met:
//
//     Redistributions of source code must retain the above copyright
//     notice, this list of conditions and the following disclaimer.
//
//     Redistributions in binary form must reproduce the above
//     copyright notice, this list of conditions and the following
//     disclaimer in the documentation and/or other materials provided
//     with the distribution.
//
//     Neither the name of The Khronos Group Inc. nor the names of its
//     contributors may be used to endorse or promote products derived
//     from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
//  COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
//  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
//  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
//  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//  POSSIBILITY OF SUCH DAMAGE.
const std = @import("std");

pub fn build(b: *std.Build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const glslang = b.addStaticLibrary(.{
        .name = "glslang",
        .target = target,
        .optimize = optimize,
    });

    glslang.addCSourceFile(.{
        .file = .{ .path = "glslang/glslang/CInterface/glslang_c_interface.cpp" },
        .flags = &.{},
    });

    glslang.addCSourceFile(.{
        .file = .{ .path = "glslang/glslang/OSDependent/Unix/ossource.cpp" },
        .flags = &.{},
    });

    glslang.addCSourceFile(.{
        .file = .{ .path = "glslang/glslang/GenericCodeGen/CodeGen.cpp" },
        .flags = &.{},
    });

    glslang.addCSourceFile(.{
        .file = .{ .path = "glslang/glslang/GenericCodeGen/Link.cpp" },
        .flags = &.{},
    });

    glslang.addCSourceFile(.{
        .file = .{ .path = "glslang/glslang/ResourceLimits/ResourceLimits.cpp" },
        .flags = &.{},
    });

    glslang.addCSourceFile(.{
        .file = .{ .path = "glslang/glslang/ResourceLimits/resource_limits_c.cpp" },
        .flags = &.{},
    });

    const config_h = b.addConfigHeader(.{
        .style = .{ .cmake = .{ .path = "glslang/build_info.h.tmpl" } },
        .include_path = "glslang/build_info.h",
    }, config_h_vals);
    glslang.addConfigHeader(config_h);
    glslang.step.dependOn(&config_h.step);
    glslang.installConfigHeader(config_h, .{
        .dest_rel_path = "glslang/build_info.h",
    });
    glslang.addCSourceFiles(&machine_independent_src, &.{});
    glslang.addCSourceFiles(&spirv_source, &.{});

    glslang.addIncludePath(.{ .path = "glslang" });
    glslang.addIncludePath(.{ .path = "glslang/SPIRV" });
    const prefix = "glslang/";
    for (glslang_headers) |h| {
        glslang.installHeader(h, h[prefix.len..h.len]);
    }
    for (machine_independent_header) |h| {
        glslang.installHeader(h, h[prefix.len..h.len]);
    }

    glslang.linkLibCpp();

    b.installArtifact(glslang);
}

const config_h_vals = .{
    .major = 13,
    .minor = 0,
    .patch = 0,
    .flavor = 20230823,
};

const spirv_source = .{
    "glslang/SPIRV/GlslangToSpv.cpp",
    "glslang/SPIRV/InReadableOrder.cpp",
    "glslang/SPIRV/Logger.cpp",
    "glslang/SPIRV/SpvBuilder.cpp",
    "glslang/SPIRV/SpvPostProcess.cpp",
    "glslang/SPIRV/doc.cpp",
    "glslang/SPIRV/SpvTools.cpp",
    "glslang/SPIRV/disassemble.cpp",
    "glslang/SPIRV/CInterface/spirv_c_interface.cpp",
    "glslang/SPIRV/SPVRemapper.cpp",
};

const glslang_headers: []const []const u8 = &.{
    "glslang/glslang/Public/Shaderlang.h",
    "glslang/glslang/Public/ResourceLimits.h",
    "glslang/glslang/Public/resource_limits_c.h",
    "glslang/glslang/Include/arrays.h",
    "glslang/glslang/Include/BaseTypes.h",
    "glslang/glslang/Include/Common.h",
    "glslang/glslang/Include/ConstantUnion.h",
    "glslang/glslang/Include/glslang_c_interface.h",
    "glslang/glslang/Include/glslang_c_shader_types.h",
    "glslang/glslang/Include/InfoSink.h",
    "glslang/glslang/Include/InitializeGlobals.h",
    "glslang/glslang/Include/intermediate.h",
    "glslang/glslang/Include/PoolAlloc.h",
    "glslang/glslang/Include/ResourceLimits.h",
    "glslang/glslang/Include/ShHandle.h",
    "glslang/glslang/Include/SpirvIntrinsics.h",
    "glslang/glslang/Include/Types.h",
};

const machine_independent_header: []const []const u8 = &.{
    "glslang/glslang/MachineIndependent/attribute.h",
    "glslang/glslang/MachineIndependent/glslang_tab.cpp.h",
    "glslang/glslang/MachineIndependent/gl_types.h",
    "glslang/glslang/MachineIndependent/Initialize.h",
    "glslang/glslang/MachineIndependent/iomapper.h",
    "glslang/glslang/MachineIndependent/LiveTraverser.h",
    "glslang/glslang/MachineIndependent/localintermediate.h",
    "glslang/glslang/MachineIndependent/ParseHelper.h",
    "glslang/glslang/MachineIndependent/reflection.h",
    "glslang/glslang/MachineIndependent/RemoveTree.h",
    "glslang/glslang/MachineIndependent/Scan.h",
    "glslang/glslang/MachineIndependent/ScanContext.h",
    "glslang/glslang/MachineIndependent/SymbolTable.h",
    "glslang/glslang/MachineIndependent/Versions.h",
    "glslang/glslang/MachineIndependent/parseVersions.h",
    "glslang/glslang/MachineIndependent/propagateNoContraction.h",
    "glslang/glslang/MachineIndependent/preprocessor/PpContext.h",
    "glslang/glslang/MachineIndependent/preprocessor/PpTokens.h",
};

const machine_independent_src = .{
    // "glslang/glslang/MachineIndependent/glslang.y",
    "glslang/glslang/MachineIndependent/glslang_tab.cpp",
    "glslang/glslang/MachineIndependent/attribute.cpp",
    "glslang/glslang/MachineIndependent/Constant.cpp",
    "glslang/glslang/MachineIndependent/iomapper.cpp",
    "glslang/glslang/MachineIndependent/InfoSink.cpp",
    "glslang/glslang/MachineIndependent/Initialize.cpp",
    "glslang/glslang/MachineIndependent/IntermTraverse.cpp",
    "glslang/glslang/MachineIndependent/Intermediate.cpp",
    "glslang/glslang/MachineIndependent/ParseContextBase.cpp",
    "glslang/glslang/MachineIndependent/ParseHelper.cpp",
    "glslang/glslang/MachineIndependent/PoolAlloc.cpp",
    "glslang/glslang/MachineIndependent/RemoveTree.cpp",
    "glslang/glslang/MachineIndependent/Scan.cpp",
    "glslang/glslang/MachineIndependent/ShaderLang.cpp",
    "glslang/glslang/MachineIndependent/SpirvIntrinsics.cpp",
    "glslang/glslang/MachineIndependent/SymbolTable.cpp",
    "glslang/glslang/MachineIndependent/Versions.cpp",
    "glslang/glslang/MachineIndependent/intermOut.cpp",
    "glslang/glslang/MachineIndependent/limits.cpp",
    "glslang/glslang/MachineIndependent/linkValidate.cpp",
    "glslang/glslang/MachineIndependent/parseConst.cpp",
    "glslang/glslang/MachineIndependent/reflection.cpp",
    "glslang/glslang/MachineIndependent/preprocessor/Pp.cpp",
    "glslang/glslang/MachineIndependent/preprocessor/PpAtom.cpp",
    "glslang/glslang/MachineIndependent/preprocessor/PpContext.cpp",
    "glslang/glslang/MachineIndependent/preprocessor/PpScanner.cpp",
    "glslang/glslang/MachineIndependent/preprocessor/PpTokens.cpp",
    "glslang/glslang/MachineIndependent/propagateNoContraction.cpp",
};


            message(WARNING "Using `spirv-remapTargets.cmake` is deprecated: use `find_package(glslang)` to find glslang CMake targets.")

            if (NOT TARGET glslang::spirv-remap)
                include("/usr/local/lib/cmake/glslang/glslang-targets.cmake")
            endif()

            add_library(spirv-remap ALIAS glslang::spirv-remap)
        
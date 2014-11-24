PROJECT (TestLib)
 
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
FIND_PACKAGE(CUDA REQUIRED)

# "c:\Program Files (x86)\CMake 2.8\bin\cmake.exe" -G%CMAKEGENERATOR% -DCMAKE_INSTALL_PREFIX=d:/msvc2013/shared/debug -DCUDA_INSTALL_PREFIX="d:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v6.5." ..

#SET(CUDA_NVCC_EXECUTABLE "d:/CUDA2.1/bin/nvcc.exe")
 
SET(CUDA_NVCC_FLAGS CACHE STRING "nvcc flags" FORCE)
 
#HW capability 1.3
SET (CUDA_VERBOSE_BUILD ON CACHE BOOL "nvcc verbose" FORCE)
 
set(CCFILES
    chol_gold.cpp
    )

set(CUFILES
    chol.cu
    )

INCLUDE_DIRECTORIES(
    ${CUDA_INSTALL_PREFIX}/include
    )

source_group("CUDA Source Files" FILES ${CUFILES})

cuda_add_executable(chol ${CCFILES} ${CUFILES})

target_link_libraries(chol)

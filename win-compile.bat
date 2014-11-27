cd build
set CMAKEGENERATOR="NMake Makefiles"
call "c:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64
"c:\Program Files (x86)\CMake 2.8\bin\cmake.exe" -G%CMAKEGENERATOR% -DCMAKE_INSTALL_PREFIX=d:/msvc2013/shared/debug -DCUDA_INSTALL_PREFIX="d:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v6.5." ..

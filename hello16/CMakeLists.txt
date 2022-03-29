# CMakeLists.txt --- CMake project settings
#    ex) cmake -G "Visual Studio 9 2008" .
#    ex) cmake -DCMAKE_BUILD_TYPE=Release -G "MSYS Makefiles" .
##############################################################################

# CMake minimum version
cmake_minimum_required(VERSION 3.0)

# project name and languages
project(hello16 CXX)

# Visual C++ only
if(NOT MSVC)
    message(FATAL_ERROR "Visual C++ only")
endif()

##############################################################################

# hello16.exe
add_executable(hello16 hello16.cpp)
target_link_libraries(hello16 imm32)

##############################################################################

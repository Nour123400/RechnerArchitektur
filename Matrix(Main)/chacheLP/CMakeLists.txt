cmake_minimum_required(VERSION 3.19)

project(sortieren NONE)

enable_language(C)
enable_language(CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


add_executable(matCacheLP_g Matrix_cacheLP.c)
target_compile_options(matCacheLP_g PRIVATE -Wall -g -D ENABLE_LOCAL_MAIN)

add_executable(matCacheLP_o1 Matrix_cacheLP.c)
target_compile_options(matCacheLP_o1 PRIVATE -Wall -O1 -D ENABLE_LOCAL_MAIN)

add_executable(matCacheLP_o2 Matrix_cacheLP.c)
target_compile_options(matCacheLP_o2 PRIVATE -Wall -O2 -D ENABLE_LOCAL_MAIN)

add_executable(matCacheLP_o3 Matrix_cacheLP.c)
target_compile_options(matCacheLP_o3 PRIVATE -Wall -O3 -D ENABLE_LOCAL_MAIN)

add_executable(matCacheLP_gcc Matrix_cacheLP.c)
target_compile_options(matCacheLP_gcc PRIVATE -Wall -O3 -D ENABLE_LOCAL_MAIN)






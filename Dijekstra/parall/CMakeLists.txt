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

add_executable(parall_g parall.c)
target_compile_options(parall_g PRIVATE -Wall -g -D ENABLE_LOCAL_MAIN -fopenmp)
target_link_libraries(parall_g PUBLIC -fopenmp)

add_executable(parall_o1 parall.c)
target_compile_options(parall_o1 PRIVATE -Wall -O1 -D ENABLE_LOCAL_MAIN -fopenmp)
target_link_libraries(parall_o1 PUBLIC -fopenmp)

add_executable(parall_o2 parall.c)
target_compile_options(parall_o2 PRIVATE -Wall -O2 -D ENABLE_LOCAL_MAIN -fopenmp)
target_link_libraries(parall_o2 PUBLIC -fopenmp)

add_executable(parall_o3 parall.c)
target_compile_options(parall_o3 PRIVATE -Wall -O3 -D ENABLE_LOCAL_MAIN -fopenmp)
target_link_libraries(parall_o3 PUBLIC -fopenmp)

add_executable(parall_gcc parall.c)
target_compile_options(parall_gcc PRIVATE -Wall -g -D ENABLE_LOCAL_MAIN -fopenmp)
target_link_libraries(parall_gcc PUBLIC -fopenmp)


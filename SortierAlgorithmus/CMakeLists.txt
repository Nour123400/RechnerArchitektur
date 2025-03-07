cmake_minimum_required(VERSION 3.19)

project (sortieren NONE)

enable_language(C)
enable_language(CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_SYSTEM_NAME Linux)
#set(CMAKE_C_COMPILER clang)
#set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(sort main.c post_process.c pre_process.c sort.c)
target_compile_options(sort PRIVATE -Wall -g)

add_executable(quicksort_mini_g sort.c)
target_compile_options(quicksort_mini_g PRIVATE -Wall -g -D ENABLE_LOCAL_MAIN)

add_executable(quicksort_mini_o1 sort.c)
target_compile_options(quicksort_mini_o1 PRIVATE -Wall -O1 -D ENABLE_LOCAL_MAIN)

add_executable(quicksort_mini_o2 sort.c)
target_compile_options(quicksort_mini_o2 PRIVATE -Wall -O2 -D ENABLE_LOCAL_MAIN)

add_executable(quicksort_mini_o3 sort.c)
target_compile_options(quicksort_mini_o3 PRIVATE -Wall -O3 -D ENABLE_LOCAL_MAIN)




add_executable(bubblesort_mini_g bubble.c)
target_compile_options(bubblesort_mini_g PRIVATE -Wall -g -D ENABLE_LOCAL_MAIN)

add_executable(bubblesort_mini_o1 bubble.c)
target_compile_options(bubblesort_mini_o1 PRIVATE -Wall -O1 -D ENABLE_LOCAL_MAIN)

add_executable(bubblesort_mini_o2 bubble.c)
target_compile_options(bubblesort_mini_o2 PRIVATE -Wall -O2 -D ENABLE_LOCAL_MAIN)

add_executable(bubblesort_mini_o3 bubble.c)
target_compile_options(bubblesort_mini_o3 PRIVATE -Wall -O3 -D ENABLE_LOCAL_MAIN)



add_executable(insertsort_mini_g insert.c)
target_compile_options(insertsort_mini_g PRIVATE -Wall -g -D ENABLE_LOCAL_MAIN)

add_executable(insertsort_mini_o1 insert.c)
target_compile_options(insertsort_mini_o1 PRIVATE -Wall -O1 -D ENABLE_LOCAL_MAIN)

add_executable(insertsort_mini_o2 insert.c)
target_compile_options(insertsort_mini_o2 PRIVATE -Wall -O2 -D ENABLE_LOCAL_MAIN)

add_executable(insertsort_mini_o3 insert.c)
target_compile_options(insertsort_mini_o3 PRIVATE -Wall -O3 -D ENABLE_LOCAL_MAIN)







add_executable(matrix_mini_g Matrix.c)
target_compile_options(matrix_mini_g PRIVATE -Wall -g -D ENABLE_LOCAL_MAIN)

add_executable(matrix_mini_o1 Matrix.c)
target_compile_options(matrix_mini_o1 PRIVATE -Wall -O1 -D ENABLE_LOCAL_MAIN)

add_executable(matrix_mini_o2 Matrix.c)
target_compile_options(matrix_mini_o2 PRIVATE -Wall -O2 -D ENABLE_LOCAL_MAIN)

add_executable(matrix_mini_o3 Matrix.c)
target_compile_options(matrix_mini_o3 PRIVATE -Wall -O3 -D ENABLE_LOCAL_MAIN)







cmake_minimum_required (VERSION 3.14)
project(sample)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)

include(FetchContent)
FetchContent_Declare(
  googletest
  # find latest commit in github and update the part before zip 
  URL https://github.com/google/googletest/archive/a4e0be898bc81cdbf96731336cb41ff03a6b1cc5.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(
  sample_test
  sample_test.cc
  )
add_executable(
  a_test
  a_test.cc

)
target_link_libraries(
  sample_test
  GTest::gtest_main
)
target_link_libraries(
  a_test
  GTest::gtest_main
)


include(GoogleTest)
gtest_discover_tests(sample_test)
gtest_discover_tests(a_test)

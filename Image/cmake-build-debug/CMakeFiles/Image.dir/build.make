# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/dmitriy/Programs/clion-2019.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/dmitriy/Programs/clion-2019.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dmitriy/University/Image

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dmitriy/University/Image/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Image.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Image.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Image.dir/flags.make

CMakeFiles/Image.dir/main.cpp.o: CMakeFiles/Image.dir/flags.make
CMakeFiles/Image.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmitriy/University/Image/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Image.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Image.dir/main.cpp.o -c /home/dmitriy/University/Image/main.cpp

CMakeFiles/Image.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Image.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dmitriy/University/Image/main.cpp > CMakeFiles/Image.dir/main.cpp.i

CMakeFiles/Image.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Image.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dmitriy/University/Image/main.cpp -o CMakeFiles/Image.dir/main.cpp.s

# Object files for target Image
Image_OBJECTS = \
"CMakeFiles/Image.dir/main.cpp.o"

# External object files for target Image
Image_EXTERNAL_OBJECTS =

Image: CMakeFiles/Image.dir/main.cpp.o
Image: CMakeFiles/Image.dir/build.make
Image: CMakeFiles/Image.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dmitriy/University/Image/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Image"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Image.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Image.dir/build: Image

.PHONY : CMakeFiles/Image.dir/build

CMakeFiles/Image.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Image.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Image.dir/clean

CMakeFiles/Image.dir/depend:
	cd /home/dmitriy/University/Image/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dmitriy/University/Image /home/dmitriy/University/Image /home/dmitriy/University/Image/cmake-build-debug /home/dmitriy/University/Image/cmake-build-debug /home/dmitriy/University/Image/cmake-build-debug/CMakeFiles/Image.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Image.dir/depend

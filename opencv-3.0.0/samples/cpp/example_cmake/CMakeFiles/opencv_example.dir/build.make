# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake

# Include any dependencies generated for this target.
include CMakeFiles/opencv_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/opencv_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opencv_example.dir/flags.make

CMakeFiles/opencv_example.dir/example.cpp.o: CMakeFiles/opencv_example.dir/flags.make
CMakeFiles/opencv_example.dir/example.cpp.o: example.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/opencv_example.dir/example.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_example.dir/example.cpp.o -c /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake/example.cpp

CMakeFiles/opencv_example.dir/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_example.dir/example.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake/example.cpp > CMakeFiles/opencv_example.dir/example.cpp.i

CMakeFiles/opencv_example.dir/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_example.dir/example.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake/example.cpp -o CMakeFiles/opencv_example.dir/example.cpp.s

CMakeFiles/opencv_example.dir/example.cpp.o.requires:
.PHONY : CMakeFiles/opencv_example.dir/example.cpp.o.requires

CMakeFiles/opencv_example.dir/example.cpp.o.provides: CMakeFiles/opencv_example.dir/example.cpp.o.requires
	$(MAKE) -f CMakeFiles/opencv_example.dir/build.make CMakeFiles/opencv_example.dir/example.cpp.o.provides.build
.PHONY : CMakeFiles/opencv_example.dir/example.cpp.o.provides

CMakeFiles/opencv_example.dir/example.cpp.o.provides.build: CMakeFiles/opencv_example.dir/example.cpp.o

# Object files for target opencv_example
opencv_example_OBJECTS = \
"CMakeFiles/opencv_example.dir/example.cpp.o"

# External object files for target opencv_example
opencv_example_EXTERNAL_OBJECTS =

opencv_example: CMakeFiles/opencv_example.dir/example.cpp.o
opencv_example: CMakeFiles/opencv_example.dir/build.make
opencv_example: /usr/local/lib/libopencv_xphoto.so.3.0.0
opencv_example: /usr/local/lib/libopencv_xobjdetect.so.3.0.0
opencv_example: /usr/local/lib/libopencv_ximgproc.so.3.0.0
opencv_example: /usr/local/lib/libopencv_xfeatures2d.so.3.0.0
opencv_example: /usr/local/lib/libopencv_tracking.so.3.0.0
opencv_example: /usr/local/lib/libopencv_text.so.3.0.0
opencv_example: /usr/local/lib/libopencv_surface_matching.so.3.0.0
opencv_example: /usr/local/lib/libopencv_saliency.so.3.0.0
opencv_example: /usr/local/lib/libopencv_rgbd.so.3.0.0
opencv_example: /usr/local/lib/libopencv_reg.so.3.0.0
opencv_example: /usr/local/lib/libopencv_optflow.so.3.0.0
opencv_example: /usr/local/lib/libopencv_line_descriptor.so.3.0.0
opencv_example: /usr/local/lib/libopencv_latentsvm.so.3.0.0
opencv_example: /usr/local/lib/libopencv_face.so.3.0.0
opencv_example: /usr/local/lib/libopencv_datasets.so.3.0.0
opencv_example: /usr/local/lib/libopencv_ccalib.so.3.0.0
opencv_example: /usr/local/lib/libopencv_bioinspired.so.3.0.0
opencv_example: /usr/local/lib/libopencv_bgsegm.so.3.0.0
opencv_example: /usr/local/lib/libopencv_adas.so.3.0.0
opencv_example: /usr/local/lib/libopencv_videostab.so.3.0.0
opencv_example: /usr/local/lib/libopencv_videoio.so.3.0.0
opencv_example: /usr/local/lib/libopencv_video.so.3.0.0
opencv_example: /usr/local/lib/libopencv_superres.so.3.0.0
opencv_example: /usr/local/lib/libopencv_stitching.so.3.0.0
opencv_example: /usr/local/lib/libopencv_shape.so.3.0.0
opencv_example: /usr/local/lib/libopencv_photo.so.3.0.0
opencv_example: /usr/local/lib/libopencv_objdetect.so.3.0.0
opencv_example: /usr/local/lib/libopencv_ml.so.3.0.0
opencv_example: /usr/local/lib/libopencv_imgproc.so.3.0.0
opencv_example: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
opencv_example: /usr/local/lib/libopencv_highgui.so.3.0.0
opencv_example: /usr/local/lib/libopencv_hal.a
opencv_example: /usr/local/lib/libopencv_flann.so.3.0.0
opencv_example: /usr/local/lib/libopencv_features2d.so.3.0.0
opencv_example: /usr/local/lib/libopencv_core.so.3.0.0
opencv_example: /usr/local/lib/libopencv_calib3d.so.3.0.0
opencv_example: /usr/local/lib/libopencv_text.so.3.0.0
opencv_example: /usr/local/lib/libopencv_face.so.3.0.0
opencv_example: /usr/local/lib/libopencv_xobjdetect.so.3.0.0
opencv_example: /usr/local/lib/libopencv_xfeatures2d.so.3.0.0
opencv_example: /usr/local/lib/libopencv_shape.so.3.0.0
opencv_example: /usr/local/lib/libopencv_video.so.3.0.0
opencv_example: /usr/local/lib/libopencv_calib3d.so.3.0.0
opencv_example: /usr/local/lib/libopencv_features2d.so.3.0.0
opencv_example: /usr/local/lib/libopencv_ml.so.3.0.0
opencv_example: /usr/local/lib/libopencv_highgui.so.3.0.0
opencv_example: /usr/local/lib/libopencv_videoio.so.3.0.0
opencv_example: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
opencv_example: /usr/local/lib/libopencv_imgproc.so.3.0.0
opencv_example: /usr/local/lib/libopencv_flann.so.3.0.0
opencv_example: /usr/local/lib/libopencv_core.so.3.0.0
opencv_example: /usr/local/lib/libopencv_hal.a
opencv_example: CMakeFiles/opencv_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable opencv_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opencv_example.dir/build: opencv_example
.PHONY : CMakeFiles/opencv_example.dir/build

CMakeFiles/opencv_example.dir/requires: CMakeFiles/opencv_example.dir/example.cpp.o.requires
.PHONY : CMakeFiles/opencv_example.dir/requires

CMakeFiles/opencv_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opencv_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opencv_example.dir/clean

CMakeFiles/opencv_example.dir/depend:
	cd /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake /home/code/opencv/opencv-3.0.0/samples/cpp/example_cmake/CMakeFiles/opencv_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opencv_example.dir/depend

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08

# Include any dependencies generated for this target.
include CMakeFiles/Output.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Output.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Output.dir/flags.make

CMakeFiles/Output.dir/main.cpp.o: CMakeFiles/Output.dir/flags.make
CMakeFiles/Output.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Output.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Output.dir/main.cpp.o -c /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08/main.cpp

CMakeFiles/Output.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Output.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08/main.cpp > CMakeFiles/Output.dir/main.cpp.i

CMakeFiles/Output.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Output.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08/main.cpp -o CMakeFiles/Output.dir/main.cpp.s

# Object files for target Output
Output_OBJECTS = \
"CMakeFiles/Output.dir/main.cpp.o"

# External object files for target Output
Output_EXTERNAL_OBJECTS =

Output: CMakeFiles/Output.dir/main.cpp.o
Output: CMakeFiles/Output.dir/build.make
Output: /usr/local/lib64/libopencv_gapi.so.4.0.1
Output: /usr/local/lib64/libopencv_stitching.so.4.0.1
Output: /usr/local/lib64/libopencv_aruco.so.4.0.1
Output: /usr/local/lib64/libopencv_bgsegm.so.4.0.1
Output: /usr/local/lib64/libopencv_bioinspired.so.4.0.1
Output: /usr/local/lib64/libopencv_ccalib.so.4.0.1
Output: /usr/local/lib64/libopencv_dnn_objdetect.so.4.0.1
Output: /usr/local/lib64/libopencv_dpm.so.4.0.1
Output: /usr/local/lib64/libopencv_face.so.4.0.1
Output: /usr/local/lib64/libopencv_freetype.so.4.0.1
Output: /usr/local/lib64/libopencv_fuzzy.so.4.0.1
Output: /usr/local/lib64/libopencv_hdf.so.4.0.1
Output: /usr/local/lib64/libopencv_hfs.so.4.0.1
Output: /usr/local/lib64/libopencv_img_hash.so.4.0.1
Output: /usr/local/lib64/libopencv_line_descriptor.so.4.0.1
Output: /usr/local/lib64/libopencv_reg.so.4.0.1
Output: /usr/local/lib64/libopencv_rgbd.so.4.0.1
Output: /usr/local/lib64/libopencv_saliency.so.4.0.1
Output: /usr/local/lib64/libopencv_stereo.so.4.0.1
Output: /usr/local/lib64/libopencv_structured_light.so.4.0.1
Output: /usr/local/lib64/libopencv_superres.so.4.0.1
Output: /usr/local/lib64/libopencv_surface_matching.so.4.0.1
Output: /usr/local/lib64/libopencv_tracking.so.4.0.1
Output: /usr/local/lib64/libopencv_videostab.so.4.0.1
Output: /usr/local/lib64/libopencv_xfeatures2d.so.4.0.1
Output: /usr/local/lib64/libopencv_xobjdetect.so.4.0.1
Output: /usr/local/lib64/libopencv_xphoto.so.4.0.1
Output: /usr/local/lib64/libopencv_shape.so.4.0.1
Output: /usr/local/lib64/libopencv_datasets.so.4.0.1
Output: /usr/local/lib64/libopencv_plot.so.4.0.1
Output: /usr/local/lib64/libopencv_text.so.4.0.1
Output: /usr/local/lib64/libopencv_dnn.so.4.0.1
Output: /usr/local/lib64/libopencv_ml.so.4.0.1
Output: /usr/local/lib64/libopencv_phase_unwrapping.so.4.0.1
Output: /usr/local/lib64/libopencv_optflow.so.4.0.1
Output: /usr/local/lib64/libopencv_ximgproc.so.4.0.1
Output: /usr/local/lib64/libopencv_video.so.4.0.1
Output: /usr/local/lib64/libopencv_objdetect.so.4.0.1
Output: /usr/local/lib64/libopencv_calib3d.so.4.0.1
Output: /usr/local/lib64/libopencv_features2d.so.4.0.1
Output: /usr/local/lib64/libopencv_flann.so.4.0.1
Output: /usr/local/lib64/libopencv_highgui.so.4.0.1
Output: /usr/local/lib64/libopencv_videoio.so.4.0.1
Output: /usr/local/lib64/libopencv_imgcodecs.so.4.0.1
Output: /usr/local/lib64/libopencv_photo.so.4.0.1
Output: /usr/local/lib64/libopencv_imgproc.so.4.0.1
Output: /usr/local/lib64/libopencv_core.so.4.0.1
Output: CMakeFiles/Output.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Output"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Output.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Output.dir/build: Output

.PHONY : CMakeFiles/Output.dir/build

CMakeFiles/Output.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Output.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Output.dir/clean

CMakeFiles/Output.dir/depend:
	cd /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08 /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08 /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08 /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08 /home/masonhsieh/Desktop/Desktop/L/Learning/openCV/lec08/CMakeFiles/Output.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Output.dir/depend

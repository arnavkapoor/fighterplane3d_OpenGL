# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build

# Include any dependencies generated for this target.
include CMakeFiles/fighter_plane_game.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fighter_plane_game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fighter_plane_game.dir/flags.make

CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o: ../src/plane.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/plane.cpp

CMakeFiles/fighter_plane_game.dir/src/plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/plane.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/plane.cpp > CMakeFiles/fighter_plane_game.dir/src/plane.cpp.i

CMakeFiles/fighter_plane_game.dir/src/plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/plane.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/plane.cpp -o CMakeFiles/fighter_plane_game.dir/src/plane.cpp.s

CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o


CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o: ../src/other_handlers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/other_handlers.cpp

CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/other_handlers.cpp > CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.i

CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/other_handlers.cpp -o CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.s

CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o


CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o: ../src/timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/timer.cpp

CMakeFiles/fighter_plane_game.dir/src/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/timer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/timer.cpp > CMakeFiles/fighter_plane_game.dir/src/timer.cpp.i

CMakeFiles/fighter_plane_game.dir/src/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/timer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/timer.cpp -o CMakeFiles/fighter_plane_game.dir/src/timer.cpp.s

CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o


CMakeFiles/fighter_plane_game.dir/src/color.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/color.cpp.o: ../src/color.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/color.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/color.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/color.cpp

CMakeFiles/fighter_plane_game.dir/src/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/color.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/color.cpp > CMakeFiles/fighter_plane_game.dir/src/color.cpp.i

CMakeFiles/fighter_plane_game.dir/src/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/color.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/color.cpp -o CMakeFiles/fighter_plane_game.dir/src/color.cpp.s

CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/color.cpp.o


CMakeFiles/fighter_plane_game.dir/src/input.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/input.cpp.o: ../src/input.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/input.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/input.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/input.cpp

CMakeFiles/fighter_plane_game.dir/src/input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/input.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/input.cpp > CMakeFiles/fighter_plane_game.dir/src/input.cpp.i

CMakeFiles/fighter_plane_game.dir/src/input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/input.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/input.cpp -o CMakeFiles/fighter_plane_game.dir/src/input.cpp.s

CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/input.cpp.o


CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o: ../src/nonedit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/nonedit.cpp

CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/nonedit.cpp > CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.i

CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/nonedit.cpp -o CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.s

CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o


CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o: ../src/dashboard.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/dashboard.cpp

CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/dashboard.cpp > CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.i

CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/dashboard.cpp -o CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.s

CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o


CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o: ../src/surface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/surface.cpp

CMakeFiles/fighter_plane_game.dir/src/surface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/surface.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/surface.cpp > CMakeFiles/fighter_plane_game.dir/src/surface.cpp.i

CMakeFiles/fighter_plane_game.dir/src/surface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/surface.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/surface.cpp -o CMakeFiles/fighter_plane_game.dir/src/surface.cpp.s

CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o


CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o: ../src/volcano.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/volcano.cpp

CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/volcano.cpp > CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.i

CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/volcano.cpp -o CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.s

CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o


CMakeFiles/fighter_plane_game.dir/src/main.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/main.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/main.cpp

CMakeFiles/fighter_plane_game.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/main.cpp > CMakeFiles/fighter_plane_game.dir/src/main.cpp.i

CMakeFiles/fighter_plane_game.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/main.cpp -o CMakeFiles/fighter_plane_game.dir/src/main.cpp.s

CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/main.cpp.o


CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o: CMakeFiles/fighter_plane_game.dir/flags.make
CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o: ../src/ring.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o -c /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/ring.cpp

CMakeFiles/fighter_plane_game.dir/src/ring.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fighter_plane_game.dir/src/ring.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/ring.cpp > CMakeFiles/fighter_plane_game.dir/src/ring.cpp.i

CMakeFiles/fighter_plane_game.dir/src/ring.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fighter_plane_game.dir/src/ring.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/src/ring.cpp -o CMakeFiles/fighter_plane_game.dir/src/ring.cpp.s

CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.requires:

.PHONY : CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.requires

CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.provides: CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.requires
	$(MAKE) -f CMakeFiles/fighter_plane_game.dir/build.make CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.provides.build
.PHONY : CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.provides

CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.provides.build: CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o


# Object files for target fighter_plane_game
fighter_plane_game_OBJECTS = \
"CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/color.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/input.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/main.cpp.o" \
"CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o"

# External object files for target fighter_plane_game
fighter_plane_game_EXTERNAL_OBJECTS =

fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/color.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/input.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/main.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/build.make
fighter_plane_game: CMakeFiles/fighter_plane_game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable fighter_plane_game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fighter_plane_game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fighter_plane_game.dir/build: fighter_plane_game

.PHONY : CMakeFiles/fighter_plane_game.dir/build

CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/plane.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/other_handlers.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/timer.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/color.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/input.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/nonedit.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/dashboard.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/surface.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/volcano.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/main.cpp.o.requires
CMakeFiles/fighter_plane_game.dir/requires: CMakeFiles/fighter_plane_game.dir/src/ring.cpp.o.requires

.PHONY : CMakeFiles/fighter_plane_game.dir/requires

CMakeFiles/fighter_plane_game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fighter_plane_game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fighter_plane_game.dir/clean

CMakeFiles/fighter_plane_game.dir/depend:
	cd /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build /home/arnav/Courses2-2/Graphics/OpenGL_FighterPlane/fighterplane/build/CMakeFiles/fighter_plane_game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fighter_plane_game.dir/depend

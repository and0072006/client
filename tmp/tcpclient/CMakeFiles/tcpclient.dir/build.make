# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /usr/bin/cmake3

# The command to remove a file.
RM = /usr/bin/cmake3 -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anvecher/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anvecher/client/tmp

# Include any dependencies generated for this target.
include tcpclient/CMakeFiles/tcpclient.dir/depend.make

# Include the progress variables for this target.
include tcpclient/CMakeFiles/tcpclient.dir/progress.make

# Include the compile flags for this target's objects.
include tcpclient/CMakeFiles/tcpclient.dir/flags.make

tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o: tcpclient/CMakeFiles/tcpclient.dir/flags.make
tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o: ../tcpclient/TCPClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anvecher/client/tmp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o"
	cd /home/anvecher/client/tmp/tcpclient && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpclient.dir/TCPClient.cpp.o -c /home/anvecher/client/tcpclient/TCPClient.cpp

tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpclient.dir/TCPClient.cpp.i"
	cd /home/anvecher/client/tmp/tcpclient && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anvecher/client/tcpclient/TCPClient.cpp > CMakeFiles/tcpclient.dir/TCPClient.cpp.i

tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpclient.dir/TCPClient.cpp.s"
	cd /home/anvecher/client/tmp/tcpclient && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anvecher/client/tcpclient/TCPClient.cpp -o CMakeFiles/tcpclient.dir/TCPClient.cpp.s

tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.requires:

.PHONY : tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.requires

tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.provides: tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.requires
	$(MAKE) -f tcpclient/CMakeFiles/tcpclient.dir/build.make tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.provides.build
.PHONY : tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.provides

tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.provides.build: tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o


tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o: tcpclient/CMakeFiles/tcpclient.dir/flags.make
tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o: ../tcpclient/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anvecher/client/tmp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o"
	cd /home/anvecher/client/tmp/tcpclient && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcpclient.dir/Util.cpp.o -c /home/anvecher/client/tcpclient/Util.cpp

tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpclient.dir/Util.cpp.i"
	cd /home/anvecher/client/tmp/tcpclient && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anvecher/client/tcpclient/Util.cpp > CMakeFiles/tcpclient.dir/Util.cpp.i

tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpclient.dir/Util.cpp.s"
	cd /home/anvecher/client/tmp/tcpclient && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anvecher/client/tcpclient/Util.cpp -o CMakeFiles/tcpclient.dir/Util.cpp.s

tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.requires:

.PHONY : tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.requires

tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.provides: tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.requires
	$(MAKE) -f tcpclient/CMakeFiles/tcpclient.dir/build.make tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.provides.build
.PHONY : tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.provides

tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.provides.build: tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o


# Object files for target tcpclient
tcpclient_OBJECTS = \
"CMakeFiles/tcpclient.dir/TCPClient.cpp.o" \
"CMakeFiles/tcpclient.dir/Util.cpp.o"

# External object files for target tcpclient
tcpclient_EXTERNAL_OBJECTS =

tcpclient/libtcpclient.a: tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o
tcpclient/libtcpclient.a: tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o
tcpclient/libtcpclient.a: tcpclient/CMakeFiles/tcpclient.dir/build.make
tcpclient/libtcpclient.a: tcpclient/CMakeFiles/tcpclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anvecher/client/tmp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libtcpclient.a"
	cd /home/anvecher/client/tmp/tcpclient && $(CMAKE_COMMAND) -P CMakeFiles/tcpclient.dir/cmake_clean_target.cmake
	cd /home/anvecher/client/tmp/tcpclient && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tcpclient/CMakeFiles/tcpclient.dir/build: tcpclient/libtcpclient.a

.PHONY : tcpclient/CMakeFiles/tcpclient.dir/build

tcpclient/CMakeFiles/tcpclient.dir/requires: tcpclient/CMakeFiles/tcpclient.dir/TCPClient.cpp.o.requires
tcpclient/CMakeFiles/tcpclient.dir/requires: tcpclient/CMakeFiles/tcpclient.dir/Util.cpp.o.requires

.PHONY : tcpclient/CMakeFiles/tcpclient.dir/requires

tcpclient/CMakeFiles/tcpclient.dir/clean:
	cd /home/anvecher/client/tmp/tcpclient && $(CMAKE_COMMAND) -P CMakeFiles/tcpclient.dir/cmake_clean.cmake
.PHONY : tcpclient/CMakeFiles/tcpclient.dir/clean

tcpclient/CMakeFiles/tcpclient.dir/depend:
	cd /home/anvecher/client/tmp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anvecher/client /home/anvecher/client/tcpclient /home/anvecher/client/tmp /home/anvecher/client/tmp/tcpclient /home/anvecher/client/tmp/tcpclient/CMakeFiles/tcpclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tcpclient/CMakeFiles/tcpclient.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yf/Linux/grpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yf/Linux/grpc/build

# Include any dependencies generated for this target.
include example/caller/CMakeFiles/consumer1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include example/caller/CMakeFiles/consumer1.dir/compiler_depend.make

# Include the progress variables for this target.
include example/caller/CMakeFiles/consumer1.dir/progress.make

# Include the compile flags for this target's objects.
include example/caller/CMakeFiles/consumer1.dir/flags.make

example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.o: example/caller/CMakeFiles/consumer1.dir/flags.make
example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.o: ../example/caller/calluserservice.cc
example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.o: example/caller/CMakeFiles/consumer1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.o"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.o -MF CMakeFiles/consumer1.dir/calluserservice.cc.o.d -o CMakeFiles/consumer1.dir/calluserservice.cc.o -c /home/yf/Linux/grpc/example/caller/calluserservice.cc

example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consumer1.dir/calluserservice.cc.i"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/example/caller/calluserservice.cc > CMakeFiles/consumer1.dir/calluserservice.cc.i

example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consumer1.dir/calluserservice.cc.s"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/example/caller/calluserservice.cc -o CMakeFiles/consumer1.dir/calluserservice.cc.s

example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.o: example/caller/CMakeFiles/consumer1.dir/flags.make
example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.o: ../example/user.pb.cc
example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.o: example/caller/CMakeFiles/consumer1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.o"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.o -MF CMakeFiles/consumer1.dir/__/user.pb.cc.o.d -o CMakeFiles/consumer1.dir/__/user.pb.cc.o -c /home/yf/Linux/grpc/example/user.pb.cc

example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consumer1.dir/__/user.pb.cc.i"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/example/user.pb.cc > CMakeFiles/consumer1.dir/__/user.pb.cc.i

example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consumer1.dir/__/user.pb.cc.s"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/example/user.pb.cc -o CMakeFiles/consumer1.dir/__/user.pb.cc.s

# Object files for target consumer1
consumer1_OBJECTS = \
"CMakeFiles/consumer1.dir/calluserservice.cc.o" \
"CMakeFiles/consumer1.dir/__/user.pb.cc.o"

# External object files for target consumer1
consumer1_EXTERNAL_OBJECTS =

../bin/consumer1: example/caller/CMakeFiles/consumer1.dir/calluserservice.cc.o
../bin/consumer1: example/caller/CMakeFiles/consumer1.dir/__/user.pb.cc.o
../bin/consumer1: example/caller/CMakeFiles/consumer1.dir/build.make
../bin/consumer1: ../lib/libmcrpc.a
../bin/consumer1: example/caller/CMakeFiles/consumer1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/consumer1"
	cd /home/yf/Linux/grpc/build/example/caller && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/consumer1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/caller/CMakeFiles/consumer1.dir/build: ../bin/consumer1
.PHONY : example/caller/CMakeFiles/consumer1.dir/build

example/caller/CMakeFiles/consumer1.dir/clean:
	cd /home/yf/Linux/grpc/build/example/caller && $(CMAKE_COMMAND) -P CMakeFiles/consumer1.dir/cmake_clean.cmake
.PHONY : example/caller/CMakeFiles/consumer1.dir/clean

example/caller/CMakeFiles/consumer1.dir/depend:
	cd /home/yf/Linux/grpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yf/Linux/grpc /home/yf/Linux/grpc/example/caller /home/yf/Linux/grpc/build /home/yf/Linux/grpc/build/example/caller /home/yf/Linux/grpc/build/example/caller/CMakeFiles/consumer1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/caller/CMakeFiles/consumer1.dir/depend


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
include example/caller/CMakeFiles/consumer2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include example/caller/CMakeFiles/consumer2.dir/compiler_depend.make

# Include the progress variables for this target.
include example/caller/CMakeFiles/consumer2.dir/progress.make

# Include the compile flags for this target's objects.
include example/caller/CMakeFiles/consumer2.dir/flags.make

example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.o: example/caller/CMakeFiles/consumer2.dir/flags.make
example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.o: ../example/caller/callfriendservice.cc
example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.o: example/caller/CMakeFiles/consumer2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.o"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.o -MF CMakeFiles/consumer2.dir/callfriendservice.cc.o.d -o CMakeFiles/consumer2.dir/callfriendservice.cc.o -c /home/yf/Linux/grpc/example/caller/callfriendservice.cc

example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consumer2.dir/callfriendservice.cc.i"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/example/caller/callfriendservice.cc > CMakeFiles/consumer2.dir/callfriendservice.cc.i

example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consumer2.dir/callfriendservice.cc.s"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/example/caller/callfriendservice.cc -o CMakeFiles/consumer2.dir/callfriendservice.cc.s

example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.o: example/caller/CMakeFiles/consumer2.dir/flags.make
example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.o: ../example/friend.pb.cc
example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.o: example/caller/CMakeFiles/consumer2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.o"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.o -MF CMakeFiles/consumer2.dir/__/friend.pb.cc.o.d -o CMakeFiles/consumer2.dir/__/friend.pb.cc.o -c /home/yf/Linux/grpc/example/friend.pb.cc

example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/consumer2.dir/__/friend.pb.cc.i"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/example/friend.pb.cc > CMakeFiles/consumer2.dir/__/friend.pb.cc.i

example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/consumer2.dir/__/friend.pb.cc.s"
	cd /home/yf/Linux/grpc/build/example/caller && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/example/friend.pb.cc -o CMakeFiles/consumer2.dir/__/friend.pb.cc.s

# Object files for target consumer2
consumer2_OBJECTS = \
"CMakeFiles/consumer2.dir/callfriendservice.cc.o" \
"CMakeFiles/consumer2.dir/__/friend.pb.cc.o"

# External object files for target consumer2
consumer2_EXTERNAL_OBJECTS =

../bin/consumer2: example/caller/CMakeFiles/consumer2.dir/callfriendservice.cc.o
../bin/consumer2: example/caller/CMakeFiles/consumer2.dir/__/friend.pb.cc.o
../bin/consumer2: example/caller/CMakeFiles/consumer2.dir/build.make
../bin/consumer2: ../lib/libmcrpc.a
../bin/consumer2: example/caller/CMakeFiles/consumer2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/consumer2"
	cd /home/yf/Linux/grpc/build/example/caller && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/consumer2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/caller/CMakeFiles/consumer2.dir/build: ../bin/consumer2
.PHONY : example/caller/CMakeFiles/consumer2.dir/build

example/caller/CMakeFiles/consumer2.dir/clean:
	cd /home/yf/Linux/grpc/build/example/caller && $(CMAKE_COMMAND) -P CMakeFiles/consumer2.dir/cmake_clean.cmake
.PHONY : example/caller/CMakeFiles/consumer2.dir/clean

example/caller/CMakeFiles/consumer2.dir/depend:
	cd /home/yf/Linux/grpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yf/Linux/grpc /home/yf/Linux/grpc/example/caller /home/yf/Linux/grpc/build /home/yf/Linux/grpc/build/example/caller /home/yf/Linux/grpc/build/example/caller/CMakeFiles/consumer2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/caller/CMakeFiles/consumer2.dir/depend


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
include src/CMakeFiles/mcrpc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/mcrpc.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/mcrpc.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/mcrpc.dir/flags.make

src/CMakeFiles/mcrpc.dir/logger.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/logger.cc.o: ../src/logger.cc
src/CMakeFiles/mcrpc.dir/logger.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/mcrpc.dir/logger.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/logger.cc.o -MF CMakeFiles/mcrpc.dir/logger.cc.o.d -o CMakeFiles/mcrpc.dir/logger.cc.o -c /home/yf/Linux/grpc/src/logger.cc

src/CMakeFiles/mcrpc.dir/logger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/logger.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/logger.cc > CMakeFiles/mcrpc.dir/logger.cc.i

src/CMakeFiles/mcrpc.dir/logger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/logger.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/logger.cc -o CMakeFiles/mcrpc.dir/logger.cc.s

src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o: ../src/mcrpcapplication.cc
src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o -MF CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o.d -o CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o -c /home/yf/Linux/grpc/src/mcrpcapplication.cc

src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/mcrpcapplication.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/mcrpcapplication.cc > CMakeFiles/mcrpc.dir/mcrpcapplication.cc.i

src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/mcrpcapplication.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/mcrpcapplication.cc -o CMakeFiles/mcrpc.dir/mcrpcapplication.cc.s

src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o: ../src/mcrpcchannel.cc
src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o -MF CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o.d -o CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o -c /home/yf/Linux/grpc/src/mcrpcchannel.cc

src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/mcrpcchannel.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/mcrpcchannel.cc > CMakeFiles/mcrpc.dir/mcrpcchannel.cc.i

src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/mcrpcchannel.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/mcrpcchannel.cc -o CMakeFiles/mcrpc.dir/mcrpcchannel.cc.s

src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o: ../src/mcrpcconfig.cc
src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o -MF CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o.d -o CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o -c /home/yf/Linux/grpc/src/mcrpcconfig.cc

src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/mcrpcconfig.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/mcrpcconfig.cc > CMakeFiles/mcrpc.dir/mcrpcconfig.cc.i

src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/mcrpcconfig.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/mcrpcconfig.cc -o CMakeFiles/mcrpc.dir/mcrpcconfig.cc.s

src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o: ../src/mcrpcheader.pb.cc
src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o -MF CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o.d -o CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o -c /home/yf/Linux/grpc/src/mcrpcheader.pb.cc

src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/mcrpcheader.pb.cc > CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.i

src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/mcrpcheader.pb.cc -o CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.s

src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o: ../src/mcrpccontroller.cc
src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o -MF CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o.d -o CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o -c /home/yf/Linux/grpc/src/mcrpccontroller.cc

src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/mcrpccontroller.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/mcrpccontroller.cc > CMakeFiles/mcrpc.dir/mcrpccontroller.cc.i

src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/mcrpccontroller.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/mcrpccontroller.cc -o CMakeFiles/mcrpc.dir/mcrpccontroller.cc.s

src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o: ../src/mcrpcprovide.cc
src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o -MF CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o.d -o CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o -c /home/yf/Linux/grpc/src/mcrpcprovide.cc

src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/mcrpcprovide.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/mcrpcprovide.cc > CMakeFiles/mcrpc.dir/mcrpcprovide.cc.i

src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/mcrpcprovide.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/mcrpcprovide.cc -o CMakeFiles/mcrpc.dir/mcrpcprovide.cc.s

src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.o: src/CMakeFiles/mcrpc.dir/flags.make
src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.o: ../src/zookeeperutil.cc
src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.o: src/CMakeFiles/mcrpc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.o"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.o -MF CMakeFiles/mcrpc.dir/zookeeperutil.cc.o.d -o CMakeFiles/mcrpc.dir/zookeeperutil.cc.o -c /home/yf/Linux/grpc/src/zookeeperutil.cc

src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcrpc.dir/zookeeperutil.cc.i"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yf/Linux/grpc/src/zookeeperutil.cc > CMakeFiles/mcrpc.dir/zookeeperutil.cc.i

src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcrpc.dir/zookeeperutil.cc.s"
	cd /home/yf/Linux/grpc/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yf/Linux/grpc/src/zookeeperutil.cc -o CMakeFiles/mcrpc.dir/zookeeperutil.cc.s

# Object files for target mcrpc
mcrpc_OBJECTS = \
"CMakeFiles/mcrpc.dir/logger.cc.o" \
"CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o" \
"CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o" \
"CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o" \
"CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o" \
"CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o" \
"CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o" \
"CMakeFiles/mcrpc.dir/zookeeperutil.cc.o"

# External object files for target mcrpc
mcrpc_EXTERNAL_OBJECTS =

../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/logger.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/mcrpcapplication.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/mcrpcchannel.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/mcrpcconfig.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/mcrpcheader.pb.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/mcrpccontroller.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/mcrpcprovide.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/zookeeperutil.cc.o
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/build.make
../lib/libmcrpc.a: src/CMakeFiles/mcrpc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yf/Linux/grpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library ../../lib/libmcrpc.a"
	cd /home/yf/Linux/grpc/build/src && $(CMAKE_COMMAND) -P CMakeFiles/mcrpc.dir/cmake_clean_target.cmake
	cd /home/yf/Linux/grpc/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mcrpc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/mcrpc.dir/build: ../lib/libmcrpc.a
.PHONY : src/CMakeFiles/mcrpc.dir/build

src/CMakeFiles/mcrpc.dir/clean:
	cd /home/yf/Linux/grpc/build/src && $(CMAKE_COMMAND) -P CMakeFiles/mcrpc.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/mcrpc.dir/clean

src/CMakeFiles/mcrpc.dir/depend:
	cd /home/yf/Linux/grpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yf/Linux/grpc /home/yf/Linux/grpc/src /home/yf/Linux/grpc/build /home/yf/Linux/grpc/build/src /home/yf/Linux/grpc/build/src/CMakeFiles/mcrpc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/mcrpc.dir/depend


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
CMAKE_SOURCE_DIR = /home/vip/mqtt/mqttclient-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vip/mqtt/mqttclient-master/build

# Include any dependencies generated for this target.
include common/log/CMakeFiles/salof.dir/depend.make

# Include the progress variables for this target.
include common/log/CMakeFiles/salof.dir/progress.make

# Include the compile flags for this target's objects.
include common/log/CMakeFiles/salof.dir/flags.make

common/log/CMakeFiles/salof.dir/fifo.c.o: common/log/CMakeFiles/salof.dir/flags.make
common/log/CMakeFiles/salof.dir/fifo.c.o: ../common/log/fifo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vip/mqtt/mqttclient-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object common/log/CMakeFiles/salof.dir/fifo.c.o"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/salof.dir/fifo.c.o   -c /home/vip/mqtt/mqttclient-master/common/log/fifo.c

common/log/CMakeFiles/salof.dir/fifo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/salof.dir/fifo.c.i"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vip/mqtt/mqttclient-master/common/log/fifo.c > CMakeFiles/salof.dir/fifo.c.i

common/log/CMakeFiles/salof.dir/fifo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/salof.dir/fifo.c.s"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vip/mqtt/mqttclient-master/common/log/fifo.c -o CMakeFiles/salof.dir/fifo.c.s

common/log/CMakeFiles/salof.dir/fifo.c.o.requires:

.PHONY : common/log/CMakeFiles/salof.dir/fifo.c.o.requires

common/log/CMakeFiles/salof.dir/fifo.c.o.provides: common/log/CMakeFiles/salof.dir/fifo.c.o.requires
	$(MAKE) -f common/log/CMakeFiles/salof.dir/build.make common/log/CMakeFiles/salof.dir/fifo.c.o.provides.build
.PHONY : common/log/CMakeFiles/salof.dir/fifo.c.o.provides

common/log/CMakeFiles/salof.dir/fifo.c.o.provides.build: common/log/CMakeFiles/salof.dir/fifo.c.o


common/log/CMakeFiles/salof.dir/format.c.o: common/log/CMakeFiles/salof.dir/flags.make
common/log/CMakeFiles/salof.dir/format.c.o: ../common/log/format.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vip/mqtt/mqttclient-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object common/log/CMakeFiles/salof.dir/format.c.o"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/salof.dir/format.c.o   -c /home/vip/mqtt/mqttclient-master/common/log/format.c

common/log/CMakeFiles/salof.dir/format.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/salof.dir/format.c.i"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vip/mqtt/mqttclient-master/common/log/format.c > CMakeFiles/salof.dir/format.c.i

common/log/CMakeFiles/salof.dir/format.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/salof.dir/format.c.s"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vip/mqtt/mqttclient-master/common/log/format.c -o CMakeFiles/salof.dir/format.c.s

common/log/CMakeFiles/salof.dir/format.c.o.requires:

.PHONY : common/log/CMakeFiles/salof.dir/format.c.o.requires

common/log/CMakeFiles/salof.dir/format.c.o.provides: common/log/CMakeFiles/salof.dir/format.c.o.requires
	$(MAKE) -f common/log/CMakeFiles/salof.dir/build.make common/log/CMakeFiles/salof.dir/format.c.o.provides.build
.PHONY : common/log/CMakeFiles/salof.dir/format.c.o.provides

common/log/CMakeFiles/salof.dir/format.c.o.provides.build: common/log/CMakeFiles/salof.dir/format.c.o


common/log/CMakeFiles/salof.dir/salof.c.o: common/log/CMakeFiles/salof.dir/flags.make
common/log/CMakeFiles/salof.dir/salof.c.o: ../common/log/salof.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vip/mqtt/mqttclient-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object common/log/CMakeFiles/salof.dir/salof.c.o"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/salof.dir/salof.c.o   -c /home/vip/mqtt/mqttclient-master/common/log/salof.c

common/log/CMakeFiles/salof.dir/salof.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/salof.dir/salof.c.i"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vip/mqtt/mqttclient-master/common/log/salof.c > CMakeFiles/salof.dir/salof.c.i

common/log/CMakeFiles/salof.dir/salof.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/salof.dir/salof.c.s"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vip/mqtt/mqttclient-master/common/log/salof.c -o CMakeFiles/salof.dir/salof.c.s

common/log/CMakeFiles/salof.dir/salof.c.o.requires:

.PHONY : common/log/CMakeFiles/salof.dir/salof.c.o.requires

common/log/CMakeFiles/salof.dir/salof.c.o.provides: common/log/CMakeFiles/salof.dir/salof.c.o.requires
	$(MAKE) -f common/log/CMakeFiles/salof.dir/build.make common/log/CMakeFiles/salof.dir/salof.c.o.provides.build
.PHONY : common/log/CMakeFiles/salof.dir/salof.c.o.provides

common/log/CMakeFiles/salof.dir/salof.c.o.provides.build: common/log/CMakeFiles/salof.dir/salof.c.o


# Object files for target salof
salof_OBJECTS = \
"CMakeFiles/salof.dir/fifo.c.o" \
"CMakeFiles/salof.dir/format.c.o" \
"CMakeFiles/salof.dir/salof.c.o"

# External object files for target salof
salof_EXTERNAL_OBJECTS =

lib/libsalof.a: common/log/CMakeFiles/salof.dir/fifo.c.o
lib/libsalof.a: common/log/CMakeFiles/salof.dir/format.c.o
lib/libsalof.a: common/log/CMakeFiles/salof.dir/salof.c.o
lib/libsalof.a: common/log/CMakeFiles/salof.dir/build.make
lib/libsalof.a: common/log/CMakeFiles/salof.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vip/mqtt/mqttclient-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library ../../lib/libsalof.a"
	cd /home/vip/mqtt/mqttclient-master/build/common/log && $(CMAKE_COMMAND) -P CMakeFiles/salof.dir/cmake_clean_target.cmake
	cd /home/vip/mqtt/mqttclient-master/build/common/log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/salof.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
common/log/CMakeFiles/salof.dir/build: lib/libsalof.a

.PHONY : common/log/CMakeFiles/salof.dir/build

common/log/CMakeFiles/salof.dir/requires: common/log/CMakeFiles/salof.dir/fifo.c.o.requires
common/log/CMakeFiles/salof.dir/requires: common/log/CMakeFiles/salof.dir/format.c.o.requires
common/log/CMakeFiles/salof.dir/requires: common/log/CMakeFiles/salof.dir/salof.c.o.requires

.PHONY : common/log/CMakeFiles/salof.dir/requires

common/log/CMakeFiles/salof.dir/clean:
	cd /home/vip/mqtt/mqttclient-master/build/common/log && $(CMAKE_COMMAND) -P CMakeFiles/salof.dir/cmake_clean.cmake
.PHONY : common/log/CMakeFiles/salof.dir/clean

common/log/CMakeFiles/salof.dir/depend:
	cd /home/vip/mqtt/mqttclient-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vip/mqtt/mqttclient-master /home/vip/mqtt/mqttclient-master/common/log /home/vip/mqtt/mqttclient-master/build /home/vip/mqtt/mqttclient-master/build/common/log /home/vip/mqtt/mqttclient-master/build/common/log/CMakeFiles/salof.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : common/log/CMakeFiles/salof.dir/depend


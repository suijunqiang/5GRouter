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
include common/log/arch/linux/CMakeFiles/arch.dir/depend.make

# Include the progress variables for this target.
include common/log/arch/linux/CMakeFiles/arch.dir/progress.make

# Include the compile flags for this target's objects.
include common/log/arch/linux/CMakeFiles/arch.dir/flags.make

common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o: common/log/arch/linux/CMakeFiles/arch.dir/flags.make
common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o: ../common/log/arch/linux/arch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vip/mqtt/mqttclient-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o"
	cd /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arch.dir/arch.c.o   -c /home/vip/mqtt/mqttclient-master/common/log/arch/linux/arch.c

common/log/arch/linux/CMakeFiles/arch.dir/arch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arch.dir/arch.c.i"
	cd /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vip/mqtt/mqttclient-master/common/log/arch/linux/arch.c > CMakeFiles/arch.dir/arch.c.i

common/log/arch/linux/CMakeFiles/arch.dir/arch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arch.dir/arch.c.s"
	cd /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux && /usr/bin/gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vip/mqtt/mqttclient-master/common/log/arch/linux/arch.c -o CMakeFiles/arch.dir/arch.c.s

common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.requires:

.PHONY : common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.requires

common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.provides: common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.requires
	$(MAKE) -f common/log/arch/linux/CMakeFiles/arch.dir/build.make common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.provides.build
.PHONY : common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.provides

common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.provides.build: common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o


# Object files for target arch
arch_OBJECTS = \
"CMakeFiles/arch.dir/arch.c.o"

# External object files for target arch
arch_EXTERNAL_OBJECTS =

lib/libarch.a: common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o
lib/libarch.a: common/log/arch/linux/CMakeFiles/arch.dir/build.make
lib/libarch.a: common/log/arch/linux/CMakeFiles/arch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vip/mqtt/mqttclient-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../lib/libarch.a"
	cd /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux && $(CMAKE_COMMAND) -P CMakeFiles/arch.dir/cmake_clean_target.cmake
	cd /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/arch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
common/log/arch/linux/CMakeFiles/arch.dir/build: lib/libarch.a

.PHONY : common/log/arch/linux/CMakeFiles/arch.dir/build

common/log/arch/linux/CMakeFiles/arch.dir/requires: common/log/arch/linux/CMakeFiles/arch.dir/arch.c.o.requires

.PHONY : common/log/arch/linux/CMakeFiles/arch.dir/requires

common/log/arch/linux/CMakeFiles/arch.dir/clean:
	cd /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux && $(CMAKE_COMMAND) -P CMakeFiles/arch.dir/cmake_clean.cmake
.PHONY : common/log/arch/linux/CMakeFiles/arch.dir/clean

common/log/arch/linux/CMakeFiles/arch.dir/depend:
	cd /home/vip/mqtt/mqttclient-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vip/mqtt/mqttclient-master /home/vip/mqtt/mqttclient-master/common/log/arch/linux /home/vip/mqtt/mqttclient-master/build /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux /home/vip/mqtt/mqttclient-master/build/common/log/arch/linux/CMakeFiles/arch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : common/log/arch/linux/CMakeFiles/arch.dir/depend

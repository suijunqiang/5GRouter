# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/cmake

# The command to remove a file.
RM = /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sui/src/kevin/mqttclient-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sui/src/kevin/mqttclient-master

# Include any dependencies generated for this target.
include platform/linux/CMakeFiles/platform.dir/depend.make

# Include the progress variables for this target.
include platform/linux/CMakeFiles/platform.dir/progress.make

# Include the compile flags for this target's objects.
include platform/linux/CMakeFiles/platform.dir/flags.make

platform/linux/CMakeFiles/platform.dir/platform_memory.c.o: platform/linux/CMakeFiles/platform.dir/flags.make
platform/linux/CMakeFiles/platform.dir/platform_memory.c.o: platform/linux/platform_memory.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object platform/linux/CMakeFiles/platform.dir/platform_memory.c.o"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/platform.dir/platform_memory.c.o   -c /home/sui/src/kevin/mqttclient-master/platform/linux/platform_memory.c

platform/linux/CMakeFiles/platform.dir/platform_memory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/platform.dir/platform_memory.c.i"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/platform/linux/platform_memory.c > CMakeFiles/platform.dir/platform_memory.c.i

platform/linux/CMakeFiles/platform.dir/platform_memory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/platform.dir/platform_memory.c.s"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/platform/linux/platform_memory.c -o CMakeFiles/platform.dir/platform_memory.c.s

platform/linux/CMakeFiles/platform.dir/platform_mutex.c.o: platform/linux/CMakeFiles/platform.dir/flags.make
platform/linux/CMakeFiles/platform.dir/platform_mutex.c.o: platform/linux/platform_mutex.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object platform/linux/CMakeFiles/platform.dir/platform_mutex.c.o"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/platform.dir/platform_mutex.c.o   -c /home/sui/src/kevin/mqttclient-master/platform/linux/platform_mutex.c

platform/linux/CMakeFiles/platform.dir/platform_mutex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/platform.dir/platform_mutex.c.i"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/platform/linux/platform_mutex.c > CMakeFiles/platform.dir/platform_mutex.c.i

platform/linux/CMakeFiles/platform.dir/platform_mutex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/platform.dir/platform_mutex.c.s"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/platform/linux/platform_mutex.c -o CMakeFiles/platform.dir/platform_mutex.c.s

platform/linux/CMakeFiles/platform.dir/platform_net_socket.c.o: platform/linux/CMakeFiles/platform.dir/flags.make
platform/linux/CMakeFiles/platform.dir/platform_net_socket.c.o: platform/linux/platform_net_socket.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object platform/linux/CMakeFiles/platform.dir/platform_net_socket.c.o"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/platform.dir/platform_net_socket.c.o   -c /home/sui/src/kevin/mqttclient-master/platform/linux/platform_net_socket.c

platform/linux/CMakeFiles/platform.dir/platform_net_socket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/platform.dir/platform_net_socket.c.i"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/platform/linux/platform_net_socket.c > CMakeFiles/platform.dir/platform_net_socket.c.i

platform/linux/CMakeFiles/platform.dir/platform_net_socket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/platform.dir/platform_net_socket.c.s"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/platform/linux/platform_net_socket.c -o CMakeFiles/platform.dir/platform_net_socket.c.s

platform/linux/CMakeFiles/platform.dir/platform_thread.c.o: platform/linux/CMakeFiles/platform.dir/flags.make
platform/linux/CMakeFiles/platform.dir/platform_thread.c.o: platform/linux/platform_thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object platform/linux/CMakeFiles/platform.dir/platform_thread.c.o"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/platform.dir/platform_thread.c.o   -c /home/sui/src/kevin/mqttclient-master/platform/linux/platform_thread.c

platform/linux/CMakeFiles/platform.dir/platform_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/platform.dir/platform_thread.c.i"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/platform/linux/platform_thread.c > CMakeFiles/platform.dir/platform_thread.c.i

platform/linux/CMakeFiles/platform.dir/platform_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/platform.dir/platform_thread.c.s"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/platform/linux/platform_thread.c -o CMakeFiles/platform.dir/platform_thread.c.s

platform/linux/CMakeFiles/platform.dir/platform_timer.c.o: platform/linux/CMakeFiles/platform.dir/flags.make
platform/linux/CMakeFiles/platform.dir/platform_timer.c.o: platform/linux/platform_timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object platform/linux/CMakeFiles/platform.dir/platform_timer.c.o"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/platform.dir/platform_timer.c.o   -c /home/sui/src/kevin/mqttclient-master/platform/linux/platform_timer.c

platform/linux/CMakeFiles/platform.dir/platform_timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/platform.dir/platform_timer.c.i"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/platform/linux/platform_timer.c > CMakeFiles/platform.dir/platform_timer.c.i

platform/linux/CMakeFiles/platform.dir/platform_timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/platform.dir/platform_timer.c.s"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/platform/linux/platform_timer.c -o CMakeFiles/platform.dir/platform_timer.c.s

# Object files for target platform
platform_OBJECTS = \
"CMakeFiles/platform.dir/platform_memory.c.o" \
"CMakeFiles/platform.dir/platform_mutex.c.o" \
"CMakeFiles/platform.dir/platform_net_socket.c.o" \
"CMakeFiles/platform.dir/platform_thread.c.o" \
"CMakeFiles/platform.dir/platform_timer.c.o"

# External object files for target platform
platform_EXTERNAL_OBJECTS =

build/lib/libplatform.a: platform/linux/CMakeFiles/platform.dir/platform_memory.c.o
build/lib/libplatform.a: platform/linux/CMakeFiles/platform.dir/platform_mutex.c.o
build/lib/libplatform.a: platform/linux/CMakeFiles/platform.dir/platform_net_socket.c.o
build/lib/libplatform.a: platform/linux/CMakeFiles/platform.dir/platform_thread.c.o
build/lib/libplatform.a: platform/linux/CMakeFiles/platform.dir/platform_timer.c.o
build/lib/libplatform.a: platform/linux/CMakeFiles/platform.dir/build.make
build/lib/libplatform.a: platform/linux/CMakeFiles/platform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library ../../build/lib/libplatform.a"
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && $(CMAKE_COMMAND) -P CMakeFiles/platform.dir/cmake_clean_target.cmake
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/platform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platform/linux/CMakeFiles/platform.dir/build: build/lib/libplatform.a

.PHONY : platform/linux/CMakeFiles/platform.dir/build

platform/linux/CMakeFiles/platform.dir/clean:
	cd /home/sui/src/kevin/mqttclient-master/platform/linux && $(CMAKE_COMMAND) -P CMakeFiles/platform.dir/cmake_clean.cmake
.PHONY : platform/linux/CMakeFiles/platform.dir/clean

platform/linux/CMakeFiles/platform.dir/depend:
	cd /home/sui/src/kevin/mqttclient-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sui/src/kevin/mqttclient-master /home/sui/src/kevin/mqttclient-master/platform/linux /home/sui/src/kevin/mqttclient-master /home/sui/src/kevin/mqttclient-master/platform/linux /home/sui/src/kevin/mqttclient-master/platform/linux/CMakeFiles/platform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platform/linux/CMakeFiles/platform.dir/depend

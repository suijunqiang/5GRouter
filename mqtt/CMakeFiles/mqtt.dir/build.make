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
include mqtt/CMakeFiles/mqtt.dir/depend.make

# Include the progress variables for this target.
include mqtt/CMakeFiles/mqtt.dir/progress.make

# Include the compile flags for this target's objects.
include mqtt/CMakeFiles/mqtt.dir/flags.make

mqtt/CMakeFiles/mqtt.dir/MQTTConnectClient.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTConnectClient.c.o: mqtt/MQTTConnectClient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTConnectClient.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTConnectClient.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTConnectClient.c

mqtt/CMakeFiles/mqtt.dir/MQTTConnectClient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTConnectClient.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTConnectClient.c > CMakeFiles/mqtt.dir/MQTTConnectClient.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTConnectClient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTConnectClient.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTConnectClient.c -o CMakeFiles/mqtt.dir/MQTTConnectClient.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTConnectServer.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTConnectServer.c.o: mqtt/MQTTConnectServer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTConnectServer.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTConnectServer.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTConnectServer.c

mqtt/CMakeFiles/mqtt.dir/MQTTConnectServer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTConnectServer.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTConnectServer.c > CMakeFiles/mqtt.dir/MQTTConnectServer.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTConnectServer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTConnectServer.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTConnectServer.c -o CMakeFiles/mqtt.dir/MQTTConnectServer.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.o: mqtt/MQTTDeserializePublish.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTDeserializePublish.c

mqtt/CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTDeserializePublish.c > CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTDeserializePublish.c -o CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTFormat.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTFormat.c.o: mqtt/MQTTFormat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTFormat.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTFormat.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTFormat.c

mqtt/CMakeFiles/mqtt.dir/MQTTFormat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTFormat.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTFormat.c > CMakeFiles/mqtt.dir/MQTTFormat.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTFormat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTFormat.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTFormat.c -o CMakeFiles/mqtt.dir/MQTTFormat.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTPacket.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTPacket.c.o: mqtt/MQTTPacket.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTPacket.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTPacket.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTPacket.c

mqtt/CMakeFiles/mqtt.dir/MQTTPacket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTPacket.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTPacket.c > CMakeFiles/mqtt.dir/MQTTPacket.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTPacket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTPacket.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTPacket.c -o CMakeFiles/mqtt.dir/MQTTPacket.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTSerializePublish.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTSerializePublish.c.o: mqtt/MQTTSerializePublish.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTSerializePublish.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTSerializePublish.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSerializePublish.c

mqtt/CMakeFiles/mqtt.dir/MQTTSerializePublish.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTSerializePublish.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSerializePublish.c > CMakeFiles/mqtt.dir/MQTTSerializePublish.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTSerializePublish.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTSerializePublish.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSerializePublish.c -o CMakeFiles/mqtt.dir/MQTTSerializePublish.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.o: mqtt/MQTTSubscribeClient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSubscribeClient.c

mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSubscribeClient.c > CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSubscribeClient.c -o CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.o: mqtt/MQTTSubscribeServer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSubscribeServer.c

mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSubscribeServer.c > CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTSubscribeServer.c -o CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.o: mqtt/MQTTUnsubscribeClient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTUnsubscribeClient.c

mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTUnsubscribeClient.c > CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTUnsubscribeClient.c -o CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.s

mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.o: mqtt/CMakeFiles/mqtt.dir/flags.make
mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.o: mqtt/MQTTUnsubscribeServer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.o"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.o   -c /home/sui/src/kevin/mqttclient-master/mqtt/MQTTUnsubscribeServer.c

mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.i"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sui/src/kevin/mqttclient-master/mqtt/MQTTUnsubscribeServer.c > CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.i

mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.s"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && /home/sui/sdx55-sdk-installed/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc   -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi --sysroot=/home/sui/sdx55-sdk-installed/sysroots/armv7at2hf-neon-oe-linux-gnueabi $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sui/src/kevin/mqttclient-master/mqtt/MQTTUnsubscribeServer.c -o CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.s

# Object files for target mqtt
mqtt_OBJECTS = \
"CMakeFiles/mqtt.dir/MQTTConnectClient.c.o" \
"CMakeFiles/mqtt.dir/MQTTConnectServer.c.o" \
"CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.o" \
"CMakeFiles/mqtt.dir/MQTTFormat.c.o" \
"CMakeFiles/mqtt.dir/MQTTPacket.c.o" \
"CMakeFiles/mqtt.dir/MQTTSerializePublish.c.o" \
"CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.o" \
"CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.o" \
"CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.o" \
"CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.o"

# External object files for target mqtt
mqtt_EXTERNAL_OBJECTS =

build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTConnectClient.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTConnectServer.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTDeserializePublish.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTFormat.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTPacket.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTSerializePublish.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeClient.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTSubscribeServer.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeClient.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/MQTTUnsubscribeServer.c.o
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/build.make
build/lib/libmqtt.a: mqtt/CMakeFiles/mqtt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sui/src/kevin/mqttclient-master/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library ../build/lib/libmqtt.a"
	cd /home/sui/src/kevin/mqttclient-master/mqtt && $(CMAKE_COMMAND) -P CMakeFiles/mqtt.dir/cmake_clean_target.cmake
	cd /home/sui/src/kevin/mqttclient-master/mqtt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mqtt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mqtt/CMakeFiles/mqtt.dir/build: build/lib/libmqtt.a

.PHONY : mqtt/CMakeFiles/mqtt.dir/build

mqtt/CMakeFiles/mqtt.dir/clean:
	cd /home/sui/src/kevin/mqttclient-master/mqtt && $(CMAKE_COMMAND) -P CMakeFiles/mqtt.dir/cmake_clean.cmake
.PHONY : mqtt/CMakeFiles/mqtt.dir/clean

mqtt/CMakeFiles/mqtt.dir/depend:
	cd /home/sui/src/kevin/mqttclient-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sui/src/kevin/mqttclient-master /home/sui/src/kevin/mqttclient-master/mqtt /home/sui/src/kevin/mqttclient-master /home/sui/src/kevin/mqttclient-master/mqtt /home/sui/src/kevin/mqttclient-master/mqtt/CMakeFiles/mqtt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mqtt/CMakeFiles/mqtt.dir/depend


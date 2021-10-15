# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/clion/164/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/164/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/robo02/robocomp/components/robocomp-giraff/components/attention_control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robo02/robocomp/components/robocomp-giraff/components/attention_control

# Include any dependencies generated for this target.
include src/CMakeFiles/attention_control.dir/depend.make
# Include the progress variables for this target.
include src/CMakeFiles/attention_control.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/attention_control.dir/flags.make

src/CommonBehavior.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "BU ice=>h/cpp: Generating CommonBehavior.h and CommonBehavior.cpp from /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CommonBehavior.ice"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && slice2cpp --underscore /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CommonBehavior.ice -I/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/ --output-dir .

src/CommonBehavior.h: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/CommonBehavior.h

src/CameraRGBDSimple.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "BU ice=>h/cpp: Generating CameraRGBDSimple.h and CameraRGBDSimple.cpp from /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CameraRGBDSimple.ice"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && slice2cpp --underscore /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CameraRGBDSimple.ice -I/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/ --output-dir .

src/CameraRGBDSimple.h: src/CameraRGBDSimple.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/CameraRGBDSimple.h

src/DifferentialRobot.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "BU ice=>h/cpp: Generating DifferentialRobot.h and DifferentialRobot.cpp from /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/DifferentialRobot.ice"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && slice2cpp --underscore /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/DifferentialRobot.ice -I/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/ --output-dir .

src/DifferentialRobot.h: src/DifferentialRobot.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/DifferentialRobot.h

src/EmotionalMotor.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "BU ice=>h/cpp: Generating EmotionalMotor.h and EmotionalMotor.cpp from /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/EmotionalMotor.ice"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && slice2cpp --underscore /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/EmotionalMotor.ice -I/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/ --output-dir .

src/EmotionalMotor.h: src/EmotionalMotor.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/EmotionalMotor.h

src/GenericBase.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "BU ice=>h/cpp: Generating GenericBase.h and GenericBase.cpp from /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/GenericBase.ice"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && slice2cpp --underscore /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/GenericBase.ice -I/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/ --output-dir .

src/GenericBase.h: src/GenericBase.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/GenericBase.h

src/CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.o: src/attention_control_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/attention_control_autogen/mocs_compilation.cpp

src/CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/attention_control_autogen/mocs_compilation.cpp > CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.i

src/CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/attention_control_autogen/mocs_compilation.cpp -o CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.s

src/CMakeFiles/attention_control.dir/specificworker.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/specificworker.cpp.o: src/specificworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/attention_control.dir/specificworker.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/specificworker.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/specificworker.cpp

src/CMakeFiles/attention_control.dir/specificworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/specificworker.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/specificworker.cpp > CMakeFiles/attention_control.dir/specificworker.cpp.i

src/CMakeFiles/attention_control.dir/specificworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/specificworker.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/specificworker.cpp -o CMakeFiles/attention_control.dir/specificworker.cpp.s

src/CMakeFiles/attention_control.dir/specificmonitor.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/specificmonitor.cpp.o: src/specificmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/attention_control.dir/specificmonitor.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/specificmonitor.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/specificmonitor.cpp

src/CMakeFiles/attention_control.dir/specificmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/specificmonitor.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/specificmonitor.cpp > CMakeFiles/attention_control.dir/specificmonitor.cpp.i

src/CMakeFiles/attention_control.dir/specificmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/specificmonitor.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/specificmonitor.cpp -o CMakeFiles/attention_control.dir/specificmonitor.cpp.s

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o: /opt/robocomp/classes/rapplication/rapplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o -c /opt/robocomp/classes/rapplication/rapplication.cpp

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/robocomp/classes/rapplication/rapplication.cpp > CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.i

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/robocomp/classes/rapplication/rapplication.cpp -o CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.s

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o: /opt/robocomp/classes/sigwatch/sigwatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o -c /opt/robocomp/classes/sigwatch/sigwatch.cpp

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/robocomp/classes/sigwatch/sigwatch.cpp > CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.i

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/robocomp/classes/sigwatch/sigwatch.cpp -o CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.s

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.o: /opt/robocomp/classes/qlog/qlog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.o -c /opt/robocomp/classes/qlog/qlog.cpp

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/robocomp/classes/qlog/qlog.cpp > CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.i

src/CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/robocomp/classes/qlog/qlog.cpp -o CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.s

src/CMakeFiles/attention_control.dir/main.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/attention_control.dir/main.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/main.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/main.cpp

src/CMakeFiles/attention_control.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/main.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/main.cpp > CMakeFiles/attention_control.dir/main.cpp.i

src/CMakeFiles/attention_control.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/main.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/main.cpp -o CMakeFiles/attention_control.dir/main.cpp.s

src/CMakeFiles/attention_control.dir/genericmonitor.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/genericmonitor.cpp.o: src/genericmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/attention_control.dir/genericmonitor.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/genericmonitor.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/genericmonitor.cpp

src/CMakeFiles/attention_control.dir/genericmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/genericmonitor.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/genericmonitor.cpp > CMakeFiles/attention_control.dir/genericmonitor.cpp.i

src/CMakeFiles/attention_control.dir/genericmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/genericmonitor.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/genericmonitor.cpp -o CMakeFiles/attention_control.dir/genericmonitor.cpp.s

src/CMakeFiles/attention_control.dir/commonbehaviorI.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/commonbehaviorI.cpp.o: src/commonbehaviorI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/attention_control.dir/commonbehaviorI.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/commonbehaviorI.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/commonbehaviorI.cpp

src/CMakeFiles/attention_control.dir/commonbehaviorI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/commonbehaviorI.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/commonbehaviorI.cpp > CMakeFiles/attention_control.dir/commonbehaviorI.cpp.i

src/CMakeFiles/attention_control.dir/commonbehaviorI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/commonbehaviorI.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/commonbehaviorI.cpp -o CMakeFiles/attention_control.dir/commonbehaviorI.cpp.s

src/CMakeFiles/attention_control.dir/genericworker.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/genericworker.cpp.o: src/genericworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/CMakeFiles/attention_control.dir/genericworker.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/genericworker.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/genericworker.cpp

src/CMakeFiles/attention_control.dir/genericworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/genericworker.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/genericworker.cpp > CMakeFiles/attention_control.dir/genericworker.cpp.i

src/CMakeFiles/attention_control.dir/genericworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/genericworker.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/genericworker.cpp -o CMakeFiles/attention_control.dir/genericworker.cpp.s

src/CMakeFiles/attention_control.dir/CommonBehavior.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/CommonBehavior.cpp.o: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/CMakeFiles/attention_control.dir/CommonBehavior.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/CommonBehavior.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CommonBehavior.cpp

src/CMakeFiles/attention_control.dir/CommonBehavior.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/CommonBehavior.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CommonBehavior.cpp > CMakeFiles/attention_control.dir/CommonBehavior.cpp.i

src/CMakeFiles/attention_control.dir/CommonBehavior.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/CommonBehavior.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CommonBehavior.cpp -o CMakeFiles/attention_control.dir/CommonBehavior.cpp.s

src/CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.o: src/CameraRGBDSimple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CameraRGBDSimple.cpp

src/CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CameraRGBDSimple.cpp > CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.i

src/CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CameraRGBDSimple.cpp -o CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.s

src/CMakeFiles/attention_control.dir/DifferentialRobot.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/DifferentialRobot.cpp.o: src/DifferentialRobot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object src/CMakeFiles/attention_control.dir/DifferentialRobot.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/DifferentialRobot.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/DifferentialRobot.cpp

src/CMakeFiles/attention_control.dir/DifferentialRobot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/DifferentialRobot.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/DifferentialRobot.cpp > CMakeFiles/attention_control.dir/DifferentialRobot.cpp.i

src/CMakeFiles/attention_control.dir/DifferentialRobot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/DifferentialRobot.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/DifferentialRobot.cpp -o CMakeFiles/attention_control.dir/DifferentialRobot.cpp.s

src/CMakeFiles/attention_control.dir/EmotionalMotor.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/EmotionalMotor.cpp.o: src/EmotionalMotor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object src/CMakeFiles/attention_control.dir/EmotionalMotor.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/EmotionalMotor.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/EmotionalMotor.cpp

src/CMakeFiles/attention_control.dir/EmotionalMotor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/EmotionalMotor.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/EmotionalMotor.cpp > CMakeFiles/attention_control.dir/EmotionalMotor.cpp.i

src/CMakeFiles/attention_control.dir/EmotionalMotor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/EmotionalMotor.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/EmotionalMotor.cpp -o CMakeFiles/attention_control.dir/EmotionalMotor.cpp.s

src/CMakeFiles/attention_control.dir/GenericBase.cpp.o: src/CMakeFiles/attention_control.dir/flags.make
src/CMakeFiles/attention_control.dir/GenericBase.cpp.o: src/GenericBase.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object src/CMakeFiles/attention_control.dir/GenericBase.cpp.o"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/attention_control.dir/GenericBase.cpp.o -c /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/GenericBase.cpp

src/CMakeFiles/attention_control.dir/GenericBase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/attention_control.dir/GenericBase.cpp.i"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/GenericBase.cpp > CMakeFiles/attention_control.dir/GenericBase.cpp.i

src/CMakeFiles/attention_control.dir/GenericBase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/attention_control.dir/GenericBase.cpp.s"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/GenericBase.cpp -o CMakeFiles/attention_control.dir/GenericBase.cpp.s

# Object files for target attention_control
attention_control_OBJECTS = \
"CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/attention_control.dir/specificworker.cpp.o" \
"CMakeFiles/attention_control.dir/specificmonitor.cpp.o" \
"CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o" \
"CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o" \
"CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.o" \
"CMakeFiles/attention_control.dir/main.cpp.o" \
"CMakeFiles/attention_control.dir/genericmonitor.cpp.o" \
"CMakeFiles/attention_control.dir/commonbehaviorI.cpp.o" \
"CMakeFiles/attention_control.dir/genericworker.cpp.o" \
"CMakeFiles/attention_control.dir/CommonBehavior.cpp.o" \
"CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.o" \
"CMakeFiles/attention_control.dir/DifferentialRobot.cpp.o" \
"CMakeFiles/attention_control.dir/EmotionalMotor.cpp.o" \
"CMakeFiles/attention_control.dir/GenericBase.cpp.o"

# External object files for target attention_control
attention_control_EXTERNAL_OBJECTS =

bin/attention_control: src/CMakeFiles/attention_control.dir/attention_control_autogen/mocs_compilation.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/specificworker.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/specificmonitor.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/opt/robocomp/classes/rapplication/rapplication.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/opt/robocomp/classes/sigwatch/sigwatch.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/opt/robocomp/classes/qlog/qlog.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/main.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/genericmonitor.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/commonbehaviorI.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/genericworker.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/CommonBehavior.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/CameraRGBDSimple.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/DifferentialRobot.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/EmotionalMotor.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/GenericBase.cpp.o
bin/attention_control: src/CMakeFiles/attention_control.dir/build.make
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.12.8
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5Xml.so.5.12.8
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5XmlPatterns.so.5.12.8
bin/attention_control: /usr/lib/x86_64-linux-gnu/libIce++11.so
bin/attention_control: /usr/lib/x86_64-linux-gnu/libIceStorm++11.so
bin/attention_control: /usr/lib/x86_64-linux-gnu/libIce.so
bin/attention_control: /usr/lib/x86_64-linux-gnu/libIceStorm.so
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.12.8
bin/attention_control: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
bin/attention_control: src/CMakeFiles/attention_control.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/robo02/robocomp/components/robocomp-giraff/components/attention_control/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Linking CXX executable ../bin/attention_control"
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/attention_control.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/attention_control.dir/build: bin/attention_control
.PHONY : src/CMakeFiles/attention_control.dir/build

src/CMakeFiles/attention_control.dir/clean:
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src && $(CMAKE_COMMAND) -P CMakeFiles/attention_control.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/attention_control.dir/clean

src/CMakeFiles/attention_control.dir/depend: src/CameraRGBDSimple.cpp
src/CMakeFiles/attention_control.dir/depend: src/CameraRGBDSimple.h
src/CMakeFiles/attention_control.dir/depend: src/CommonBehavior.cpp
src/CMakeFiles/attention_control.dir/depend: src/CommonBehavior.h
src/CMakeFiles/attention_control.dir/depend: src/DifferentialRobot.cpp
src/CMakeFiles/attention_control.dir/depend: src/DifferentialRobot.h
src/CMakeFiles/attention_control.dir/depend: src/EmotionalMotor.cpp
src/CMakeFiles/attention_control.dir/depend: src/EmotionalMotor.h
src/CMakeFiles/attention_control.dir/depend: src/GenericBase.cpp
src/CMakeFiles/attention_control.dir/depend: src/GenericBase.h
	cd /home/robo02/robocomp/components/robocomp-giraff/components/attention_control && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robo02/robocomp/components/robocomp-giraff/components/attention_control /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src /home/robo02/robocomp/components/robocomp-giraff/components/attention_control /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src /home/robo02/robocomp/components/robocomp-giraff/components/attention_control/src/CMakeFiles/attention_control.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/attention_control.dir/depend


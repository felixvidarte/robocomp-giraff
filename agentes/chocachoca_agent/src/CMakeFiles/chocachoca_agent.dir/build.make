# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent

# Include any dependencies generated for this target.
include src/CMakeFiles/chocachoca_agent.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/chocachoca_agent.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/chocachoca_agent.dir/flags.make

src/CommonBehavior.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "BU ice=>h/cpp: Generating CommonBehavior.h and CommonBehavior.cpp from /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/CommonBehavior.ice"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && slice2cpp --underscore /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/CommonBehavior.ice -I/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/ --output-dir .

src/CommonBehavior.h: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate src/CommonBehavior.h

src/ui_mainUI.h: src/mainUI.ui
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ui_mainUI.h"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/qt5/bin/uic -o /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/ui_mainUI.h /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/mainUI.ui

src/CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.o: src/chocachoca_agent_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/chocachoca_agent_autogen/mocs_compilation.cpp

src/CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/chocachoca_agent_autogen/mocs_compilation.cpp > CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.i

src/CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/chocachoca_agent_autogen/mocs_compilation.cpp -o CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.s

src/CMakeFiles/chocachoca_agent.dir/specificworker.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/specificworker.cpp.o: src/specificworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/specificworker.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/specificworker.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/specificworker.cpp

src/CMakeFiles/chocachoca_agent.dir/specificworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/specificworker.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/specificworker.cpp > CMakeFiles/chocachoca_agent.dir/specificworker.cpp.i

src/CMakeFiles/chocachoca_agent.dir/specificworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/specificworker.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/specificworker.cpp -o CMakeFiles/chocachoca_agent.dir/specificworker.cpp.s

src/CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.o: src/specificmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/specificmonitor.cpp

src/CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/specificmonitor.cpp > CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.i

src/CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/specificmonitor.cpp -o CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.s

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.o: /home/pbustos/robocomp/classes/rapplication/rapplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.o -c /home/pbustos/robocomp/classes/rapplication/rapplication.cpp

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/classes/rapplication/rapplication.cpp > CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.i

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/classes/rapplication/rapplication.cpp -o CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.s

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.o: /home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.o -c /home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp > CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.i

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp -o CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.s

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.o: /home/pbustos/robocomp/classes/qlog/qlog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.o -c /home/pbustos/robocomp/classes/qlog/qlog.cpp

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/classes/qlog/qlog.cpp > CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.i

src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/classes/qlog/qlog.cpp -o CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.s

src/CMakeFiles/chocachoca_agent.dir/main.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/main.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/main.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/main.cpp

src/CMakeFiles/chocachoca_agent.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/main.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/main.cpp > CMakeFiles/chocachoca_agent.dir/main.cpp.i

src/CMakeFiles/chocachoca_agent.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/main.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/main.cpp -o CMakeFiles/chocachoca_agent.dir/main.cpp.s

src/CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.o: src/genericmonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/genericmonitor.cpp

src/CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/genericmonitor.cpp > CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.i

src/CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/genericmonitor.cpp -o CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.s

src/CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.o: src/commonbehaviorI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/commonbehaviorI.cpp

src/CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/commonbehaviorI.cpp > CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.i

src/CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/commonbehaviorI.cpp -o CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.s

src/CMakeFiles/chocachoca_agent.dir/genericworker.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/genericworker.cpp.o: src/genericworker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/genericworker.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/genericworker.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/genericworker.cpp

src/CMakeFiles/chocachoca_agent.dir/genericworker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/genericworker.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/genericworker.cpp > CMakeFiles/chocachoca_agent.dir/genericworker.cpp.i

src/CMakeFiles/chocachoca_agent.dir/genericworker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/genericworker.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/genericworker.cpp -o CMakeFiles/chocachoca_agent.dir/genericworker.cpp.s

src/CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.o: src/CMakeFiles/chocachoca_agent.dir/flags.make
src/CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.o: src/CommonBehavior.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.o"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.o -c /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/CommonBehavior.cpp

src/CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.i"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/CommonBehavior.cpp > CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.i

src/CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.s"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/CommonBehavior.cpp -o CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.s

# Object files for target chocachoca_agent
chocachoca_agent_OBJECTS = \
"CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/specificworker.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/main.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/genericworker.cpp.o" \
"CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.o"

# External object files for target chocachoca_agent
chocachoca_agent_EXTERNAL_OBJECTS =

bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/chocachoca_agent_autogen/mocs_compilation.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/specificworker.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/specificmonitor.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/rapplication/rapplication.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/sigwatch/sigwatch.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/home/pbustos/robocomp/classes/qlog/qlog.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/main.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/genericmonitor.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/commonbehaviorI.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/genericworker.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/CommonBehavior.cpp.o
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/build.make
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.12.8
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5Xml.so.5.12.8
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5XmlPatterns.so.5.12.8
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libIce++11.so
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libIceStorm++11.so
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libIce.so
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libIceStorm.so
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.12.8
bin/chocachoca_agent: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
bin/chocachoca_agent: src/CMakeFiles/chocachoca_agent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable ../bin/chocachoca_agent"
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chocachoca_agent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/chocachoca_agent.dir/build: bin/chocachoca_agent

.PHONY : src/CMakeFiles/chocachoca_agent.dir/build

src/CMakeFiles/chocachoca_agent.dir/clean:
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src && $(CMAKE_COMMAND) -P CMakeFiles/chocachoca_agent.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/chocachoca_agent.dir/clean

src/CMakeFiles/chocachoca_agent.dir/depend: src/CommonBehavior.cpp
src/CMakeFiles/chocachoca_agent.dir/depend: src/CommonBehavior.h
src/CMakeFiles/chocachoca_agent.dir/depend: src/ui_mainUI.h
	cd /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src /home/pbustos/robocomp/components/robocomp-giraff/agentes/chocachoca_agent/src/CMakeFiles/chocachoca_agent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/chocachoca_agent.dir/depend


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
CMAKE_SOURCE_DIR = /home/val/test_ws/src/val_bimanual

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/val/test_ws/src/val_bimanual/build

# Utility rule file for format.

# Include the progress variables for this target.
include ExternalSource/ParamHandler/CMakeFiles/format.dir/progress.make

ExternalSource/ParamHandler/CMakeFiles/format:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/val/test_ws/src/val_bimanual/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running clang-format"
	cd /home/val/test_ws/src/val_bimanual/build/ExternalSource/ParamHandler && clang-format --style=file -i /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/binary.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/convert.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/directives.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/emit.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/emitfromevents.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/emitter.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/emitterstate.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/emitterutils.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/exceptions.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/exp.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/memory.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/node.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/node_data.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/nodebuilder.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/nodeevents.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/null.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/ostream_wrapper.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/parse.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/parser.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/regex_yaml.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/scanner.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/scanscalar.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/scantag.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/scantoken.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/simplekey.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/singledocparser.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/stream.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/tag.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/anchor.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/binary.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/contrib/anchordict.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/contrib/graphbuilder.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/dll.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/emitfromevents.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/emitter.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/emitterdef.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/emittermanip.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/emitterstyle.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/eventhandler.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/exceptions.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/mark.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/convert.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/bool_type.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/impl.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/iterator.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/iterator_fwd.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/memory.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/node.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/node_data.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/node_iterator.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/detail/node_ref.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/emit.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/impl.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/iterator.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/node.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/parse.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/ptr.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/node/type.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/noncopyable.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/null.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/ostream_wrapper.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/parser.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/stlemitter.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/traits.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/yaml.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/collectionstack.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/directives.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/emitterstate.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/emitterutils.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/exp.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/indentation.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/nodebuilder.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/nodeevents.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/ptr_vector.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/regex_yaml.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/regeximpl.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/scanner.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/scanscalar.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/scantag.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/setting.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/singledocparser.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/stream.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/streamcharsource.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/stringsource.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/tag.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/token.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/contrib/graphbuilder.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/contrib/graphbuilderadapter.cpp /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/contrib/anchordict.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/include/dynacore_yaml-cpp/contrib/graphbuilder.h /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler/src/contrib/graphbuilderadapter.h

format: ExternalSource/ParamHandler/CMakeFiles/format
format: ExternalSource/ParamHandler/CMakeFiles/format.dir/build.make

.PHONY : format

# Rule to build all files generated by this target.
ExternalSource/ParamHandler/CMakeFiles/format.dir/build: format

.PHONY : ExternalSource/ParamHandler/CMakeFiles/format.dir/build

ExternalSource/ParamHandler/CMakeFiles/format.dir/clean:
	cd /home/val/test_ws/src/val_bimanual/build/ExternalSource/ParamHandler && $(CMAKE_COMMAND) -P CMakeFiles/format.dir/cmake_clean.cmake
.PHONY : ExternalSource/ParamHandler/CMakeFiles/format.dir/clean

ExternalSource/ParamHandler/CMakeFiles/format.dir/depend:
	cd /home/val/test_ws/src/val_bimanual/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/val/test_ws/src/val_bimanual /home/val/test_ws/src/val_bimanual/ExternalSource/ParamHandler /home/val/test_ws/src/val_bimanual/build /home/val/test_ws/src/val_bimanual/build/ExternalSource/ParamHandler /home/val/test_ws/src/val_bimanual/build/ExternalSource/ParamHandler/CMakeFiles/format.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ExternalSource/ParamHandler/CMakeFiles/format.dir/depend


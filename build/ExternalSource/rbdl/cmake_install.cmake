# Install script for directory: /home/val/test_ws/src/val_bimanual/ExternalSource/rbdl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libdynacore_rbdl.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libdynacore_rbdl.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libdynacore_rbdl.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libdynacore_rbdl.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/home/val/test_ws/src/val_bimanual/build/ExternalSource/rbdl/libdynacore_rbdl.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libdynacore_rbdl.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libdynacore_rbdl.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/lib/libdynacore_rbdl.so"
         OLD_RPATH "/home/val/test_ws/src/val_bimanual/build/ExternalSource/urdf:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libdynacore_rbdl.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/val_bimanual/rbdl/Body.h;/usr/local/include/val_bimanual/rbdl/Constraints.h;/usr/local/include/val_bimanual/rbdl/Dynamics.h;/usr/local/include/val_bimanual/rbdl/Joint.h;/usr/local/include/val_bimanual/rbdl/Kinematics.h;/usr/local/include/val_bimanual/rbdl/Logging.h;/usr/local/include/val_bimanual/rbdl/Model.h;/usr/local/include/val_bimanual/rbdl/Quaternion.h;/usr/local/include/val_bimanual/rbdl/SpatialAlgebraOperators.h;/usr/local/include/val_bimanual/rbdl/compileassert.h;/usr/local/include/val_bimanual/rbdl/rbdl.h;/usr/local/include/val_bimanual/rbdl/rbdl_config.h;/usr/local/include/val_bimanual/rbdl/rbdl_eigenmath.h;/usr/local/include/val_bimanual/rbdl/rbdl_math.h;/usr/local/include/val_bimanual/rbdl/rbdl_mathutils.h;/usr/local/include/val_bimanual/rbdl/rbdl_utils.h;/usr/local/include/val_bimanual/rbdl/urdfreader.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/val_bimanual/rbdl" TYPE FILE FILES
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Body.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Constraints.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Dynamics.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Joint.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Kinematics.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Logging.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Model.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/Quaternion.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/SpatialAlgebraOperators.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/compileassert.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/rbdl.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/rbdl_config.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/rbdl_eigenmath.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/rbdl_math.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/rbdl_mathutils.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/rbdl_utils.h"
    "/home/val/test_ws/src/val_bimanual/ExternalSource/rbdl/urdfreader.h"
    )
endif()


#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dynacore_yaml-cpp" for configuration "Release"
set_property(TARGET dynacore_yaml-cpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dynacore_yaml-cpp PROPERTIES
  IMPORTED_LOCATION_RELEASE "/usr/local/lib/libdynacore_yaml-cpp.so.0.5.3"
  IMPORTED_SONAME_RELEASE "libdynacore_yaml-cpp.so.0.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS dynacore_yaml-cpp )
list(APPEND _IMPORT_CHECK_FILES_FOR_dynacore_yaml-cpp "/usr/local/lib/libdynacore_yaml-cpp.so.0.5.3" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

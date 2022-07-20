# - Try to find HDFS includes dirs and libraries
#
# Usage of this module as follows:
#
#     find_package(HDFS)
#
# Variables used by this module, they can change the default behaviour and need
# to be set before calling find_package:
#
# Variables defined by this module:
#
#  HDFS_FOUND            System has HDFS, include and lib dirs found
#  HDFS_INCLUDE_DIR      The HDFS includes directories.
#  HDFS_LIBRARY          The HDFS library.


link_directories($ENV{JAVA_HOME}/jre/lib/amd64/server)
link_directories($ENV{HADOOP_HOME}/lib/native)
link_libraries($ENV{JAVA_HOME}/jre/lib/amd64)
find_path(HDFS_INCLUDE_DIR NAMES hdfs.h PATHS $HADOOP_HOME/include)
find_library(HDFS_LIBRARY NAMES libhdfs.a PATHS $HADOOP_HOME/lib/native)
list(APPEND HDFS_LIBRARY dl)
list(APPEND HDFS_LIBRARY verify)
list(APPEND HDFS_LIBRARY java)
list(APPEND HDFS_LIBRARY jvm)

if (HDFS_INCLUDE_DIR AND HDFS_LIBRARY)
    set(HDFS_FOUND TRUE)
    mark_as_advanced(
            HDFS_INCLUDE_DIR
            HDFS_LIBRARY
    )
    message(${HDFS_LIBRARY})
endif ()

if (NOT HDFS_FOUND)
    message(FATAL_ERROR "HDFS doesn't exist")
endif ()
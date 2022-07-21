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


set(HDFS_INCLUDE_DIR
        "$ENV{JAVA_HOME}/include"
        "$ENV{JAVA_HOME}/include/linux"
        "$ENV{HADOOP_HOME}/include")

find_library(HDFS_LIBRARY NAMES hdfs PATHS
        "$ENV{JAVA_HOME}/jre/lib/amd64/server"
        "$ENV{JAVA_HOME}/jre/lib/amd64"
        "$ENV{HADOOP_HOME}/lib/native")

find_library(DL_LIBRARY NAMES dl PATHS
        "$ENV{JAVA_HOME}/jre/lib/amd64/server"
        "$ENV{JAVA_HOME}/jre/lib/amd64"
        "$ENV{HADOOP_HOME}/lib/native")

find_library(verify_LIBRARY NAMES verify PATHS
        "$ENV{JAVA_HOME}/jre/lib/amd64/server"
        "$ENV{JAVA_HOME}/jre/lib/amd64"
        "$ENV{HADOOP_HOME}/lib/native")

find_library(java_LIBRARY NAMES java PATHS
        "$ENV{JAVA_HOME}/jre/lib/amd64/server"
        "$ENV{JAVA_HOME}/jre/lib/amd64"
        "$ENV{HADOOP_HOME}/lib/native")

find_library(jvm_LIBRARY NAMES jvm PATHS
        "$ENV{JAVA_HOME}/jre/lib/amd64/server"
        "$ENV{JAVA_HOME}/jre/lib/amd64"
        "$ENV{HADOOP_HOME}/lib/native")

set(HDFS_LIBRARIES ${HDFS_LIBRARY} ${DL_LIBRARY} ${verify_LIBRARY} ${java_LIBRARY} ${jvm_LIBRARY})

message("HDFS_LIBRARIES: ${HDFS_LIBRARIES}")

if (HDFS_INCLUDE_DIR AND HDFS_LIBRARIES)
    set(HDFS_FOUND TRUE)
    mark_as_advanced(
            HDFS_INCLUDE_DIR
            HDFS_LIBRARIES
    )
endif ()

if (NOT HDFS_FOUND)
    message(FATAL_ERROR "HDFS doesn't exist")
endif ()
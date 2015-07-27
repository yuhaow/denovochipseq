# Install script for directory: /home/yuhao/chipSeq/software/seqan-trunk/core/tests

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/seq_io/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/file/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/random/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/consensus/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/find/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/basic/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/graph_types/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/bam_io/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/gff_io/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/align/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/graph_algorithms/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/stream/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/misc/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/store/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/parallel/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/pipe/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/modifier/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/graph_msa/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/arg_parse/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/seeds/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/swift_local/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/index/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/sequence/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/graph_align/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/score/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/sequence_journaled/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/tests/map/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)


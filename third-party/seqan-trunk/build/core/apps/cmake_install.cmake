# Install script for directory: /home/yuhao/chipSeq/software/seqan-trunk/core/apps

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
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/micro_razers/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/dfi/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/seqan_tcoffee/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/splazers/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/pair_align/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/tree_recon/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/razers/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/stellar/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/rabema/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/razers2/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/seqcons/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/snp_store/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/mason/cmake_install.cmake")
  INCLUDE("/home/yuhao/chipSeq/software/seqan-trunk/build/core/apps/sak/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)


#!/bin/bash

mkdir -p build && cd build

cmake $SRC_DIR                          \
      -DENABLE_PYTHON:BOOL=ON           \
      -DCMAKE_BUILD_TYPE:STRING=Release \
      -DBUILD_DOCUMENTATION:BOOL=OFF    \
      -DCMAKE_INSTALL_PREFIX=$PREFIX    \
      -DCMAKE_PREFIX_PATH=$PREFIX    \
      -DCMAKE_INSTALL_LIBDIR=lib

make install -j${CPU_COUNT}

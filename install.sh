#!/bin/bash

set -e
echo "Updating and installing required things"
pkg update && pkg upgrade -y
pkg install wget cmake
echo "Cloning and starting compiling"
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build
cd xmrig/build
# cmake
echo "Running CMake"
if ! cmake -DWITH_HWLOC=OFF ..; then
    echo "Error: CMake configuration failed"
    exit 1
else
    cmake -DWITH_HWLOC=OFF ..
fi
# compile
echo "Compiling now"
if ! make; then
    echo "Error: Compiling failed"
    exit 1
else
    make && echo "Done... you can use run script now"
fi
#!/bin/bash

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
#### USAGE:
#### ./compile_kernel_normal_script.sh
#### [clean] - clean is Included
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
#####
### Prepared by:
### Pradeep_7 (pradeepvarma107@gmail.com)
#####
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#

### This script is to compile Official kernel

echo "***************!!!!! Prepared By - Pradeep_7  !!!!!********************"

echo "***************!!!!!  CLEAN  !!!!!********************"
make clean

echo "***************!!!!! Make Mrproper!!!!!********************"
make mrproper


echo "***************!!!!! Platform!!!!!********************"
echo "***************!!!!! export ARCH=arm /
export SUBARCH=arm64 /
TOOL_CHAIN_ARM=aarch64-linux-android- /!!!!!********************"

export ARCH=arm64
export SUBARCH=arm64
TOOL_CHAIN_ARM64=aarch64-linux-android-


export PATH=$(pwd)/toolchain/bin:$PATH

export CROSS_COMPILE=$(pwd)/toolchain/bin/aarch64-linux-android-

make ARCH=$ARCH CROSS_COMPILE=toolchain/bin/arm-eabi- rosy_defconfig

echo "***************!!!!! Make -j7!!!!!********************"
make -j7


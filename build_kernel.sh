#!/bin/bash

export ARCH=arm64
export PATH=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:$PATH 

mkdir out

make -C $(pwd) O=$(pwd)/out CROSS_COMPILE=aarch64-linux-android- msm8976_sec_defconfig VARIANT_DEFCONFIG=msm8976_sec_a9xprolte_sea_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=$(pwd)/out CROSS_COMPILE=aarch64-linux-android-

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image

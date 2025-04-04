# Jetson Linux Toolchain

NVIDIA® specifies the Bootlin gcc 11.3.0 2022.08-1 aarch64 toolchain for the following options:

    Cross-compiling applications to run on this release of NVIDIA® Jetson™ Linux.

    Cross-compiling code in the current-release Jetson Linux source.

This topic describes how to obtain the toolchain.
Toolchain Information

The toolchain contains the following components:

    GCC version: 11.3.0

    Binutils version: 2.38

    Glibc version: 2.35

Downloading the Toolchain

Download the Bootlin toolchain binaries from the NVIDIA Jetson Linux home page.
Extracting the Toolchain

To extract the toolchain, enter these commands:

$ mkdir $HOME/l4t-gcc
$ cd $HOME/l4t-gcc
$ tar xf <toolchain_archive>

Setting the CROSS_COMPILE Environment Variable

Many build systems require you to set environment variable CROSS_COMPILE to point at the toolchain to use. To set CROSS_COMPILE for the aarch64 toolchain, enter the command:

$ export CROSS_COMPILE=$HOME/l4t-gcc/aarch64--glibc--stable-2022.08-1/bin/aarch64-buildroot-linux-gnu-

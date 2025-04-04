# Jetson Software Architecture (Summary)

## Overview

Jetson Linux provides a comprehensive software stack for developing AI, vision, and multimedia applications on Jetson platforms. It includes drivers, libraries, tools, and APIs optimized for NVIDIA hardware.

## Key Components

### 📘 Documentation

- Developer Guide, API References, and sample applications.
- Access additional resources via the [Jetson Download Center](https://developer.nvidia.com/embedded/downloads) or [NVIDIA Docs](https://docs.nvidia.com/jetson).

### 🧠 Deep Learning

- **TensorRT** – High-performance inference.
- **cuDNN** – GPU-accelerated neural net primitives.
- **Triton** – Model inference server.

### 👁️‍🗨️ Computer Vision

- **VPI**, **OpenCV** – Optimized for Jetson for fast image/video processing.

### ⚡ Accelerated Computing

- **cuBLAS**, **cuFFT** – Libraries for math and transform operations.

### 🎮 Graphics

- APIs like **Vulkan**, **OpenGL ES**, **Wayland**, and **X Driver** supported.

### 🎥 Multimedia

- **GStreamer**, **V4L2**, **Libargus** for media streaming and processing.

### 📷 Sensors

- Sensor input and processing via **Libargus**, **SPE RTOS**, and interfaces like PCI, SPI, and CAN.

### 🚀 CUDA-X

- CUDA-based tools and libraries for parallel computation and graphics.

### 🧰 Developer Tools

- **Nsight**, **Jetson toolchain**, profilers, and flashing utilities.

### 🧱 Board Support Package (BSP)

- Includes Linux kernel, bootloader, rootfs, and source code.

### 🧪 Other Components

- **MMAPI**, **JetPack SDK**, OpenGL/EGL support, and CUDA toolkits.

For full technical details, visit the [official Jetson documentation](https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/text/SD/Clocks.html).

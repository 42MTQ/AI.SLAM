# WebRTC Framework

WebRTC is a free open source project that provides real-time communication capabilities to browsers and mobile apps.

## Description

A major feature of WebRTC is the ability to send and receive interactive HD videos. Fast processing of such videos requires hardware accelerated video encoding.

Currently the open source WebRTC project framework supports various software encoder types: VP8, VP9, and H264. NVIDIA integrates hardware accelerated H.264 encoding into the WebRTC encoding framework. This document uses the name NvEncoder to denote this feature.

### Typical Buffer Flow

The following diagram shows a typical buffer flow in the hardware accelerated WebRTC encoding framework.

A source delivers YUV frames, which the framework converts to I420 format and queues on the output plane of the encoder. The output plane buffers are sent to NvEncoder using proprietary NVIDIA low-level encoding libraries. NvEncoder returns filled encoded buffers on its capture plane.

The encoded buffers are sent for further processing as required by the application.

### Reference

https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/text/SD/HardwareAccelerationInTheWebrtcFramework.html

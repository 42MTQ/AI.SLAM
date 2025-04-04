# Deepstream SDK

https://developer.nvidia.com/deepstream-sdk

## Description

What is NVIDIA DeepStream?

NVIDIA’s DeepStream SDK is a complete streaming analytics toolkit based on GStreamer for AI-based multi-sensor processing, video, audio, and image understanding. It’s ideal for vision AI developers, software partners, startups, and OEMs building IVA apps and services.

You can now create stream-processing pipelines that incorporate neural networks and other complex processing tasks like tracking, video encoding/decoding, and video rendering. These pipelines enable real-time analytics on video, image, and sensor data.

### What is DeepStream?

NVIDIA’s DeepStream SDK delivers a complete streaming analytics toolkit for AI-based multi-sensor processing, video and image understanding. DeepStream is an integral part of NVIDIA Metropolis, the platform for building end-to-end services and solutions for transforming pixels and sensor data to actionable insights. . DeepStream SDK features hardware-accelerated building blocks, called plugins that bring deep neural networks and other complex processing tasks into a stream processing pipeline. The SDK allows you to focus on building core deep learning networks and IP rather than designing end-to-end solutions from scratch.

The SDK uses AI to perceive pixels and analyze metadata while offering integration from the edge-to-the-cloud. The SDK can be used to build applications across various use cases including retail analytics, patient monitoring in healthcare facilities, parking management, optical inspection, managing logistics and operations.

The SDK features:

    Running inference in native TensorFlow and TensorFlow-TensorRT using Triton inference server

    Development in Python using DeepStream Python bindings

    Edge to cloud integration using standard message brokers like Kafka and MQTT or with Azure Edge IoT

    IoT and manageability features: bi-directional messaging between edge and cloud, over the air model (OTA) update, smart recording and TLS based authentication for secure messaging

    Turnkey deployment of models trained with TAO Toolkit

    Latest releases of NVIDIA libraries for AI and other GPU computing tasks: TensorRT™ 7.0 and CUDA® 10.2/CUDA® 11

    Hardware accelerated video and image decoding

    Sample apps in C/C++ and Python to get started

See DeepStream and TAO in action by exploring our latest NVIDIA AI demos. Demos include multi-camera tracking, Project Tokkio and Self-checkout and more.

#### Development Guide For NVIDIA DeepStream SDK

https://docs.nvidia.com/metropolis/deepstream/dev-guide/

##### Architecture specific pre-trained models

In addition to purpose-built models, Transfer Learning Toolkit supports the following detection architectures:

    YOLOV3
    FasterRCNN
    SSD
    DSSD
    RetinaNet
    DetectNet_v2

These detection meta-architectures can be used with 13 backbones or feature extractors with TLT. For a complete list of all the permutations that are supported by TLT, please see the matrix below:

TLT2.0 supports instance segmentation using MaskRCNN architecture

###### Resources

https://catalog.ngc.nvidia.com/orgs/nvidia/collections/deepstream_sdk

https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_Zero_Coding_Sample_Graphs.html

https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_TAO_integration.html

https://www.youtube.com/watch?v=4nV-GtqggEw

https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_ref_app_github.html

###### API Reference Python

https://docs.nvidia.com/metropolis/deepstream/dev-guide/python-api/index.html

###### API Reference

https://forums.developer.nvidia.com/c/accelerated-computing/intelligent-video-analytics/deepstream-sdk/15

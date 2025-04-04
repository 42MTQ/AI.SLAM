# OAK-D Camera Overview

The OAK-D is a state-of-the-art AI vision camera designed by Luxonis, combining stereo depth perception with a high-resolution RGB camera. It offers real-time on-device neural network inferencing and computer vision capabilities, making it ideal for robotics, automation, and AI-based applications.

## Key Features

- **On-Device AI Processing**: 4 TOPS of processing power (1.4 TOPS dedicated to AI tasks).
- **Stereo Depth Perception**: Uses two grayscale cameras for depth estimation.
- **High-Resolution RGB Camera**: Features a 12MP sensor with autofocus.
- **Efficient Connectivity**: USB-C for power and data transfer.
- **Compact & Robust Design**: Industrial-grade aluminum housing with Gorilla Glass front.

## Camera Specifications

### RGB Camera
- **Sensor**: IMX378
- **Resolution**: 12MP (4056x3040)
- **Field of View (DFOV/HFOV/VFOV)**: 81° / 69° / 55°
- **Focus**: Autofocus (8cm - ∞)
- **Max Framerate**: 60 FPS
- **Shutter Type**: Rolling
- **Sensor Size**: 1/2.3”
- **F-Number**: 1.8 ± 5%
- **Effective Focal Length**: 4.81mm
- **Pixel Size**: 1.55µm

### Stereo Depth Cameras
- **Sensor**: OV9282
- **Resolution**: 1MP (1280x800)
- **Field of View (DFOV/HFOV/VFOV)**: 81° / 72° / 49°
- **Focus**: Fixed-focus
- **Max Framerate**: 120 FPS
- **Shutter Type**: Global
- **Sensor Size**: 1/4”
- **F-Number**: 2.0 ± 5%
- **Effective Focal Length**: 2.35mm
- **Pixel Size**: 3.0µm

## Stereo Depth Perception

- **Baseline**: 7.5 cm
- **Depth Range**: ~70 cm to 12 m
- **Minimum Depth Perception**:
  - ~20 cm (400P with extended disparity)
  - ~40 cm (400P or 800P with extended disparity)
  - ~80 cm (800P)
- **Median Depth Accuracy**:
  - Below 4 m: <2% absolute depth error
  - 4 m - 7 m: <4% absolute depth error
  - 7 m - 10 m: <6% absolute depth error

## Power Consumption

- **Base Consumption (Camera Streaming)**: 2.5W - 3W
- **AI Subsystem**: Up to 1W
- **Stereo Depth Pipeline**: Up to 0.5W
- **Video Encoding**: Up to 0.5W

*Reducing FPS lowers power consumption.*

## Physical Characteristics

- **Dimensions**: 110 x 54.5 x 33 mm
- **Weight**: 115 g
- **Housing**: Industrial-grade aluminum with front Gorilla Glass
- **Mounting Options**:
  - 1/4" tripod mount
  - 75mm M4 VESA mount

## Package Includes
- 1 x OAK-D Camera
- 1 x USB-C Cable
- 1 x Quick Start Guide

## Additional Resources
- [Luxonis Documentation](https://docs.luxonis.com/projects/hardware/en/latest/pages/BW1098OAK.html)
- [OAK-D Product Page](https://shop.luxonis.com/products/oak-d)
- [OAK-D-S2 (Successor)](https://shop.luxonis.com/products/oak-d-s2)
- [OAK-D-Pro](https://shop.luxonis.com/products/oak-d-pro)

# DEPTH-AI Luxonis OAK-D Software Stack
https://github.com/luxonis/depthai-ros
Depthai ROS Repository

## parakeet-ctc-1.1b-asr

Model Overview

Parakeet is a major step forward in the evolution of conversational AI. Its exceptional accuracy, coupled with the flexibility and ease of use offered by NeMo, empowers developers to create more natural and intuitive voice-powered applications. The possibilities are endless, from enhancing the accuracy of virtual assistants to enabling seamless real-time communication.

## magpie-tts-multilingual
Natural and expressive voices in multiple languages. For voice agents and brand ambassadors.+


## Megatron 1b nmt
Enable smooth global interactions in 36 languages.
https://build.nvidia.com/nvidia/megatron-1b-nmt

## cuopt
World-record accuracy and performance for complex route optimization.

Description

NVIDIA cuOpt is an AI microservice that optimizes logistics routing to save enterprises money, increase revenue, and reduce carbon emissions. It offers dynamic rerouting, horizontal load-balancing, and robotic simulations, with sub second solver response times. cuOpt enables organizations to easily access world record accelerated optimization capabilities across multi- and hybrid cloud environments. It solves complex routing problems with multiple constraints and delivers new capabilities, empowering teams to make dynamic, data-driven decisions.

## usdcode 
https://build.nvidia.com/nvidia/usdcode/modelcard

State-of-the-art LLM that answers OpenUSD knowledge queries and generates USD-Python code.
Description:

USD Code is an OpenUSD Python code generation and knowledge answering model that helps developers to write OpenUSD code and answer OpenUSD knowledge questions.

The following NIM are used by USD Code:

    Llama-3.1-70b-instruct
    nv-embedqa-e5-v5

Llama-3.1-70b-instruct is used to drive the code generation and the agentic workflow, while NVIDIA Retrieval QA E5 Embedding is used for Retrieval Augmented Generation (RAG) to answer OpenUSD knowledge questions, USD code generation, and high-level Helper Function-based code generation. Helper Functions provide high-level abstractions leveraging the USD API, enabling developers to efficiently manage complex tasks such as creating, modifying, and querying USD scene.


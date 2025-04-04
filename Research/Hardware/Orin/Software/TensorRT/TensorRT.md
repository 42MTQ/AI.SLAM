# Tensor RT

Speed up inference by 36X compared to CPU-only platforms.

Built on the NVIDIA® CUDA® parallel programming model, TensorRT includes libraries that optimize neural network models trained on all major frameworks, calibrate them for lower precision with high accuracy, and deploy them to hyperscale data centers, workstations, laptops, and edge devices. TensorRT optimizes inference using techniques such as quantization, layer and tensor fusion, and kernel tuning.

TensorRT provides post-training quantization and support for models trained with quantization-aware training techniques for optimizing FP8, FP4, and integer formats for deep learning inference. Reduced-precision inference significantly minimizes latency, which is required for many real-time services, as well as autonomous and embedded applications.

https://developer.nvidia.com/tensorrt

## Documentation

https://docs.nvidia.com/tensorrt/

https://docs.nvidia.com/deeplearning/tensorrt/latest/index.html

### Large Language Model Inference

NVIDIA TensorRT-LLM is an open-source library that accelerates and optimizes inference performance of large language models (LLMs) on the NVIDIA AI platform with a simplified Python API.

Developers accelerate LLM performance on NVIDIA GPUs in the data center or on workstation GPUs—including NVIDIA RTX™ systems on native Windows—with the same seamless workflow.
Compile in the Cloud

NVIDIA TensorRT Cloud is a developer-focused service for generating hyper-optimized engines for given constraints and KPIs. Given an LLM and inference throughput/latency requirements, a developer can invoke TensorRT Cloud service using a command-line interface to hyper-optimize a TensorRT-LLM engine for a target GPU. The cloud service will automatically determine the best engine configuration that meets the requirements. Developers can also use the service to build optimized TensorRT engines from ONNX models on a variety of NVIDIA RTX, GeForce, Quadro®, or Tesla®-class GPUs. TensorRT Cloud is available in limited access to select partners. Apply for access, subject to approval.
Optimize Neural Networks

NVIDIA TensorRT Model Optimizer is a unified library of state-of-the-art model optimization techniques, including quantization, sparsity, and distillation. It compresses deep learning models for downstream deployment frameworks like TensorRT-LLM and TensorRT to efficiently optimize inference on NVIDIA GPUs.
Major Framework Integrations

TensorRT integrates directly into PyTorch and Hugging Face to achieve 6X faster inference with a single line of code. TensorRT provides an ONNX parser to import ONNX models from popular frameworks into TensorRT. MATLAB is integrated with TensorRT through GPU Coder to automatically generate high-performance inference engines for NVIDIA Jetson™, NVIDIA DRIVE®, and data center platforms.
Deploy, Run, and Scale With Triton

TensorRT-optimized models are deployed, run, and scaled with NVIDIA Triton™ inference-serving software that includes TensorRT as a backend. The advantages of using Triton include high throughput with dynamic batching, concurrent model execution, model ensembling, and streaming audio and video inputs.
Accelerate Every Inference Platform

TensorRT can optimize models for applications across the edge, laptops and desktops, and data centers. It powers key NVIDIA solutions—such as NVIDIA TAO, NVIDIA DRIVE, NVIDIA Clara™, and NVIDIA JetPack™—and is integrated with application-specific SDKs, such as NVIDIA NIM™, NVIDIA DeepStream, NVIDIA® Riva, NVIDIA Merlin™, NVIDIA Maxine™, NVIDIA Morpheus, and NVIDIA Broadcast Engine.

# cuDNN

Dependency Derived Installation:

https://developer.nvidia.com/cudnn

## Documentation

https://docs.nvidia.com/deeplearning/cudnn/latest/

### Description

The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for deep neural networks. It provides highly tuned implementations of operations arising frequently in deep neural network (DNN) applications:

    Scaled dot-product attention

    Convolution, including cross-correlation

    Matrix multiplication

    Normalizations, softmax, and pooling

    Arithmetic, mathematical, relational, and logical pointwise operations

Beyond just providing high-performance implementations of individual operations, cuDNN also supports a flexible set of multi-operation fusion patterns for further optimization. The goal is to achieve the best available performance on NVIDIA GPUs for important deep learning use cases.

In cuDNN, both single-operation and multi-operation computations are expressed as operation graphs. The following API layers are available for constructing these graphs:

    Python frontend API

    C++ frontend API

    C backend API

The NVIDIA cuDNN frontend API provides a simplified programming model that is sufficient for most use cases.

Use the NVIDIA cuDNN backend API only if you want to use the legacy fixed-function routines that are not graph-based interfaces and are not exposed by the frontend API layers, or if you need a C-only interface.

#### Frontend CUDA

https://docs.nvidia.com/deeplearning/cudnn/frontend/latest/index.html

##### Backend CUDA

https://docs.nvidia.com/deeplearning/cudnn/backend/latest/index.html

###### Installation

https://docs.nvidia.com/deeplearning/cudnn/installation/latest/index.html


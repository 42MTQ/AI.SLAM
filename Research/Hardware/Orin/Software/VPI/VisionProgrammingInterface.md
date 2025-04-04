# NVIDIA® Vision Programming Interface (VPI)

 is a software library that implements computer vision (CV) and image processing (IP) algorithms on several computing hardware platforms available in NVIDIA embedded and discrete devices.

VPI provides seamless access to computing hardware that must be accessed through different and sometimes incompatible APIs, such as OpenCV and NVIDIA® CUDA® SDK, or for which public APIs do not exist, such as PVA (Programmable Vision Accelerator), VIC (Video and Image Compositor) and OFA (Optical Flow Accelerator).

The API is designed to be easy to use, without sacrificing performance. This allows for rapid prototyping and fine tuning, significantly reducing time-to-market. It can used directly in systems based in C/C++ and Python.

Within VPI, the same algorithm is implemented in different backends, such as CPU, GPU, PVA1, VIC2 and OFA2. The processing pipeline can be set up to utilize the full installed computing capacity of the target device. For example, the GPU can perform inference on one frame while the PVA and VIC preprocess the image in a subsequent frame. The CPU can perform housekeeping tasks such as updating the GUI and postprocessing images without affecting the performance of other tasks.

VPI provides seamless zero-copy memory mapping among the supported device backends, depending on certain memory characteristics. For platforms that support it, zero-copy memory mapping yields a substantial increase in throughput.

VPI supports easy interoperation with existing projects that make use of OpenCV and NVIDIA® CUDA® SDK libraries, among others. This allows for gradual replacement of existing computing tasks with faster VPI equivalents.




## Getting Started

https://docs.nvidia.com/vpi/installation.html

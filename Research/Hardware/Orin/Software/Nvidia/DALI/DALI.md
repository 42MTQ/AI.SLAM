# DALI
Training neural networks with images requires developers to first normalize those images. Because images are often compressed to save on storage, developers have built multi-stage data processing pipelines that include loading, decoding, cropping, resizing, and many other augmentation operators. These pipelines, which are currently executed on the CPU, have become a bottleneck, limiting overall throughput.

Now you can run your data processing pipelines on the GPU, reducing the total time it takes to train a neural network. The NVIDIA Data Loading Library (DALI) is a portable, open-source software library for decoding and augmenting images, videos, and speech to accelerate deep learning applications. DALI reduces data access latency and training time, mitigating bottlenecks by overlapping AI training and data pre-processing. It provides a drop-in replacement for built-in data loaders and data iterators in popular deep learning frameworks for easy integration or retargeting to different frameworks.

https://developer.nvidia.com/dali

## Github DALI

https://github.com/NVIDIA/DALI

# Appliance for  SLAM

AI accelerated decoding of imagery. Mast3R SLAM point to point matching on pixel basis, has to make use of encoding image data to reduce computing time.
This NVIDIA framework could help further alleviate processing time.

## Example Reference

Decoding breast cancer data:

https://www.kaggle.com/competitions/rsna-breast-cancer-detection/discussion/371534


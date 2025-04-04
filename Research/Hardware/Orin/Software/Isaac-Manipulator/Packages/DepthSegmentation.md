# Isaac ROS Depth Segmentation

## Overview

Isaac ROS Depth Segmentation provides NVIDIA NVIDIA-accelerated packages for depth segmentation. The isaac_ros_bi3d package uses the optimized Bi3D DNN model to perform stereo-depth estimation via binary classification, which is used for depth segmentation. Depth segmentation can be used to determine whether an obstacle is within a proximity field and to avoid collisions with obstacles during navigation.

### Bi3D

 is used in a graph of nodes to provide depth segmentation from a time-synchronized input left and right stereo image pair. Images to Bi3D need to be rectified and resized to the appropriate input resolution. The aspect ratio of the image needs to be maintained; hence, a crop and resize may be required to maintain the input aspect ratio. The graph for DNN encode, to DNN inference, to DNN decode is part of the Bi3D node. Inference is performed using TensorRT, as the Bi3D DNN model is designed to use optimizations supported by TensorRT.

Compared to other stereo disparity functions, depth segmentation provides a prediction of whether an obstacle is within a proximity field, as opposed to continuous depth, while simultaneously predicting freespace from the ground plane, which other functions typically do not provide. Also unlike other stereo disparity functions in Isaac ROS, depth segmentation runs on NVIDIA DLA (deep learning accelerator), which is separate and independent from the GPU. For more information on disparity, refer to this page.

#### Scientific Reference

https://arxiv.org/pdf/2005.07274

Stereo Depth Estimation via Binary Classification

##### Abstract

Stereo-based depth estimation is a cornerstone of com-
puter vision, with state-of-the-art methods delivering accu-
rate results in real time. For several applications such as
autonomous navigation, however, it may be useful to trade
accuracy for lower latency. We present Bi3D, a method that
estimates depth via a series of binary classifications. Rather
than testing if objects are at a particular depth D, as exist-
ing stereo methods do, it classifies them as being closer or
farther than D. This property offers a powerful mechanism
to balance accuracy and latency. Given a strict time bud-
get, Bi3D can detect objects closer than a given distance
in as little as a few milliseconds, or estimate depth with
arbitrarily coarse quantization, with complexity linear with
the number of quantization levels. Bi3D can also use the
allotted quantization levels to get continuous depth, but in
a specific depth range. For standard stereo (i.e., continuous
depth on the whole range), our method is close to or on par
with state-of-the-art, finely tuned stereo methods

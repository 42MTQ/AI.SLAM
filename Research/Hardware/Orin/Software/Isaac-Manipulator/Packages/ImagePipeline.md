# Isaac ROS Image Pipeline

## Overview

Isaac ROS Image Pipeline is a metapackage of functionality for image processing. Camera output often needs pre-processing to meet the input requirements of multiple different perception functions. This can include cropping, resizing, mirroring, correcting for lens distortion, and color space conversion. For stereo cameras, additional processing is required to produce disparity between left + right images and a point cloud for depth perception.

This package is accelerated using the GPU and specialized hardware engines for image computation, replacing the CPU-based image_pipeline metapackage. Considerable effort has been made to ensure that replacing image_pipeline with isaac_ros_image_pipeline on a Jetson or GPU is as painless a transition as possible.

### Reference

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_image_pipeline/index.html


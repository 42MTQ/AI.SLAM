# Isaac ROS Nvblox


## Overview

Isaac ROS Nvblox contains ROS 2 packages for 3D reconstruction and cost maps for navigation. isaac_ros_nvblox processes depth and pose to reconstruct a 3D scene in real-time and outputs a 2D costmap for Nav2. The costmap is used in planning during navigation as a vision-based solution to avoid obstacles.

isaac_ros_nvblox is designed to work with depth-cameras and/or 3D LiDAR. The package uses GPU acceleration to compute a 3D reconstruction and 2D costmaps using nvblox, the underlying framework-independent C++ library.


### Diagram Explanation 

Above is a typical graph that uses isaac_ros_nvblox. Nvblox takes a depth image, a color image, and a pose as input, with which it computes a 3D scene reconstruction on the GPU. In this graph the pose is computed using visual_slam, or some other pose estimation node. The reconstruction is sliced into an output cost map which is provided through a cost map plugin into Nav2. An optional colorized 3D reconstruction is delivered into rviz using the mesh visualization plugin. Nvblox streams mesh updates to RViz to update the reconstruction in real-time as it is built.

isaac_ros_nvblox offers several modes of operation. In its default mode the environment is assumed to be static. Two additional modes of operation are provided to support mapping scenes which contain dynamic elements: people reconstruction, for mapping scenes containing people, and dynamic reconstruction, for mapping scenes containing more general dynamic objects. The graph above shows isaac_ros_nvblox operating in people reconstruction mode. The color image corresponding to the depth image is processed with unet, using the PeopleSemSegNet DNN model to estimate a segmentation mask for persons in the color image. Nvblox uses this mask to separate reconstructed persons into a separate people-only part of the reconstruction. The Technical Details provide more information on these three types of mapping.

#### Quickstart 

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_nvblox/isaac_ros_nvblox/index.html#quickstart


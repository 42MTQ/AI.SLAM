# Isaac ROS Object Detection

## Overview

Isaac ROS Object Detection contains ROS 2 packages to perform object detection. isaac_ros_rtdetr, isaac_ros_detectnet, and isaac_ros_yolov8 each provide a method for spatial classification using bounding boxes with an input image. Classification is performed by a GPU-accelerated model of the appropriate architecture:

    isaac_ros_rtdetr: RT-DETR models

    isaac_ros_detectnet: DetectNet models

    isaac_ros_yolov8: YOLOv8 models

The output prediction can be used by perception functions to understand the presence and spatial location of an object in an image.

### implementation Networks Available

Detectnet: https://github.com/NVIDIA-ISAAC-ROS/isaac_ros_object_detection/tree/main/isaac_ros_detectnet

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_object_detection/isaac_ros_detectnet/index.html#quickstart

ROS-YOLOV8: https://github.com/NVIDIA-ISAAC-ROS/isaac_ros_object_detection/tree/main/isaac_ros_yolov8

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_object_detection/isaac_ros_yolov8/index.html#quickstart

ROS-rtdetr: https://github.com/NVIDIA-ISAAC-ROS/isaac_ros_object_detection/tree/main/isaac_ros_rtdetr

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_object_detection/isaac_ros_rtdetr/index.html#quickstart

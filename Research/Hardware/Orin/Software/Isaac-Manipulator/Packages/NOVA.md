# Overview

Isaac ROS Nova provides a set of optimized packages and tools to interface with the Nova sensor suite. These packages integrate with hardware timestamp synchronization on Jetson Orin platforms to enable high-quality sensor fusion. Sensor data streams through Isaac ROS graphs using NITROS for NVIDIA-accelerated processing.

## Quickstart

It is recommended to use Nova through the Isaac ROS Nova meta-package. This package will launch all the sensor drivers for your defined Nova system. Guidelines and instructions on its use can be found here.

### Reference 

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_nova/index.html

Multi-camera ROS performance

Autonomy in robotics requires perception around a robot. AI based perception functions depend on time synchronized acquisition of sensor data for an understanding of the robot and its environment to plan the robots actions to perform its task.

Nova provides simultaneous start of image capture on multiple cameras to simplify perception functions, as objects and the environment are in a coherent capture at the same time across all cameras; this avoids the complexity of compensating for motion of the robot, and moving objects when cameras capture independently.
Image above contains a composite of 8 camera image captures from four Hawk cameras with Nova Orin, time synchronized as observed by the external high precision LED visual timer.

Performance of simultaneous image capture is measured as the jitter between start of frame across all cameras in the system, using hardware timestamps, and verified with an independent high speed precision LED timer. Nova measures a typical jitter on start of frame across all cameras to less than ±20 us (microseconds). Any jitter higher than ±100 us is considered not synchronized and a failure. Failure rates are measured over a specific time interval, using Sigma Levels.


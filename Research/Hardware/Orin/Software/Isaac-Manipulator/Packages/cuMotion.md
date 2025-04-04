# cuMotion

## Overview

Isaac ROS cuMotion provides CUDA-accelerated manipulation capabilities for robots in ROS 2. It provides two main capabilities:

    Motion generation for robot arms via integration of cuMotion into MoveIt 2

    Segmentation of robots from depth streams using cuMotion’s kinematics and geometry processing functions to accurately identify and filter out parts of the robot. This allows reconstruction of obstacles in the environment without spurious contributions from the robot itself.

The key advantages of using Isaac ROS cuMotion are:

    Improved cycle times: cuMotion produces smooth, optimal-time trajectories in the presence of obstacles, generally reducing motion times compared to previous state-of-the-art planners. In cluttered environments and other challenging scenarios, cuMotion can often produce a valid trajectory when other planners might fail altogether.

    Improved planning times: cuMotion takes advantage of CUDA acceleration to produce collision-free, optimal-time trajectories in a fraction of a second.

    Avoidance of obstacles captured by depth camera(s): cuMotion optionally leverages nvblox to perform 3D reconstruction of an environment from one or more depth image streams. The environment is represented as a signed distance field (SDF) for efficient obstacle-aware planning. Support is provided for segmenting and filtering the robot itself from the depth stream(s).

    Flexibility: A modular design simplifies integration with existing ROS 2 workflows, especially those already using MoveIt 2.

### Reference 

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_cumotion/index.html


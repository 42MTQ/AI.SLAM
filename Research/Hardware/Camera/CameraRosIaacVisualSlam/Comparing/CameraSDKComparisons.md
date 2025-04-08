# Camera SDK Comparison

## ZED SDK ref

https://github.com/stereolabs/zed-sdk

## HAWK SDK ref 

https://github.com/leopardshh/SDK_demo

## REALSENSE SDK ref

https://github.com/IntelRealSense/librealsense

## Comparison

## ZED SDK

    Depth Perception: Utilizes TERRA AI for enhanced depth sensing, offering high-resolution 2MP depth maps with improved accuracy and detail. Capable of detecting objects from 0.1 meters to 40 meters. ​
    stereolabs.com

    Performance: Achieves up to 5× faster depth estimation with reduced computational load, enabling real-time multi-camera operation on platforms like NVIDIA Jetson Orin Nano. ​
    GitHub+3stereolabs.com+3stereolabs.com+3

    Localization: Introduces Magellan™, a vision-based localization technology that combines stereo vision, IMU, and optional GNSS data for precise positioning in various environments. ​
    stereolabs.com

    Platform Support: Compatible with Windows 10/11, Ubuntu 20.04/22.04, and NVIDIA Jetson platforms. ​
    stereolabs.com

## HAWK SDK's

    Depth Perception: Emulates human stereoscopic vision using dual cameras and triangulation techniques to generate detailed 3D insights. Capable of depth capture at ranges up to 1 to 8 meters with a frame rate of up to 30 FPS. ​
    GitHub+1stereolabs.com+1

    Object and Face Detection: Employs AI and neural networks to detect and locate objects and faces, providing 2D and 3D bounding boxes and masks. ​
    GitHub

    Platform Support: Currently supports NVIDIA Jetson platforms, specifically JetPack 5.1.1 (L4T 35.3.1) on Jetson Orin AGX, with plans for JetPack 6.0 support. ​
    GitHub

    Programming Languages: Provides integration with Python. ​
    stereolabs.com

## RealSense SDK

    Depth Perception: Supports a range of Intel RealSense depth cameras, offering real-time depth data and 3D point clouds.​

    Object and Face Detection: Provides tools for object and face detection, leveraging depth data for enhanced accuracy.​
    GitHub

    Platform Support: Compatible with Windows, Linux, and macOS.​

    Programming Languages: Offers wrappers for multiple languages, including Python, C++, and C#.​

In summary, while all three SDKs provide depth perception and object detection capabilities, they differ in their specific features, performance optimizations, platform support, and programming language integrations.​

## Company Baseline

The technology behind this impressive capability includes Stereolabs’ SDK 3D modules such as Neural Depth Mode, VSLAM, Object Detection and Body Tracking. Furthermore, Stereolabs’ technology is coupled with GPS and RTK correction, allowing Monarch Tractor to achieve an unparalleled precision down to 2 cm of accuracy. This high level of precision is crucial in many farming tasks, ensuring maximum yield in every operation.

## Realsense VS ZED

PDF Document detailing scientific research about the effectiveness of various cameras of the two brands.

The hawk camera setup would be worth considering on a multicamera setup for extensive 360° vision for procedural applications.

https://www.mdpi.com/2075-1702/10/3/183

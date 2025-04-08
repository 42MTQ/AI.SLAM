# 📡 Proposal: Robot Vision System

## Superiority of ZED vs Intel
Picture 1 and 2 Intel RealSense
Picture 3 and 4 ZED Cameras

![ZED Caemras are  picture set 3 and 4 while Intel is 1 and 2 respectively](CameraConfiguration\ZED\PaintingDepthMeasurement.png)

## Conclusion

Based on the scientific article and the findings presented above, the ZED cameras remain superior when dealing with ranges starting from 1 or 2m +.

IntelRealSense provide cheaper solutions. That is why I chose them as a sub system for the actuator vision system. 
As they are sufficient and more cost efficient.

## 🚜 ZED X for Outdoor Navigation

- **Optimized for outdoor use** – Rugged build, excellent weather/dust resistance, and strong performance in direct sunlight (a common challenge for depth cameras).
- **Wider baseline stereo** – Enhances depth perception at longer ranges, making it ideal for field navigation and obstacle detection.
- **High accuracy and wide FOV** – Perfect for SLAM and mapping large, open environments.
- **ROS 2 support** – Actively maintained ROS 2 wrapper available for the ZED SDK by Stereolabs.

## ✅ Why ZED X?

- IP66-rated, built for outdoor environments.
- Polarizing filter reduces glare/reflection from wet leaves, water, or plastic mulch.
- **Global Shutter** compensates for robot movement during capture.
- Wide stereo baseline + high accuracy = ideal for field vision and SLAM.
- Integrated **IMU and other sensors** enhance localization precision.
- Ultra-wide field of view provides situational awareness and improves autonomous navigation.

---

## 🤖 Intel RealSense D405 for Manipulator/Actuator Vision

- **Narrower FOV, higher precision** – Ideal for close-range tasks: plant inspection, weeding, harvesting.
- **Short-range accuracy** – Low depth noise at short distances, exactly where it matters most for manipulators.
- **Lightweight and compact** – Easy to mount on robotic arms; low power consumption.
- **Mature ecosystem** – Comes with solid tools, sample code, and maintained ROS 2 integration packages.

## ✅ Why Intel RealSense D405?

- Equipped with a **Global Shutter** – critical for use on a moving robot.
- Performs well in **outdoor conditions**.
- Optimized for **very close-range measurements** with high depth precision.
- **Narrow FOV + dense pixel structure** – Enables precise actuator control and manipulation for agricultural tasks.
- Provides highest accuracy for close range targets  <2% at 50 cm .

---

## 🔄 Combo Benefits: ZED X + RealSense D405

- **Clear separation of roles**:
  - **ZED X** → Macro vision: "Where to go"
  - **D405** → Micro vision: "What to do"
- **Precision meets robustness**:
  - ZED handles wide scenes and navigation.
  - D405 excels at detailed depth perception near the actuator.
- **Optimized performance**:
  - Distributes vision workloads between two cameras.
  - Prevents bottlenecks and simplifies ROS 2 parameter tuning.
- Camera **hardware design limits their application domains**:
  - Navigation needs a broad, high-FOV system.
  - High-precision tasks require dense depth at close range.
- A **single camera** cannot realistically satisfy **both navigation and manipulation** needs in agriculture.
- Both systems were built with **their specific use cases** in mind – combining them yields the best results.

---

## 🛠️ Suggested Setup

- **ZED X**: Mounted on the **base** of the robot, **front-facing** for navigation and SLAM.
- **Intel RealSense D405**: Mounted on the **manipulator arm**, angled **downward** for tasks such as:
  - Fruit detection
  - Grasping
  - Weed targeting
- Use the **ZED SDK + ROS 2** for navigation and mapping.
- Use the **RealSense ROS 2 wrapper** for manipulator vision tasks and point cloud-based object detection.

## Extensive Comparison Research on ZED VS INTEL

Can be found under CameraRosIsaacVisualSLAM/Comparing 
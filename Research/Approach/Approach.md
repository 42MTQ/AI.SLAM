# Explored Approaches & Decisions

### Evaluated approaches that seemed fit to serve as a solution.

---

## **Path A: VIO-STEREO-GTSLAM**

### **🔹 Full Isaac ROS + GTSAM SLAM Pipeline**

### **1️⃣ Isaac ROS Visual-Inertial SLAM (For Odometry)**

✅ **Use:** `Isaac ROS Visual SLAM` (ORB-based)  
✅ **Output:** Visual-Inertial Odometry (**VIO**)  
✅ **Why?**  
- Uses **ORB feature tracking** + **IMU preintegration** for **low-drift odometry**.  
- Runs **feature tracking on GPU**, reducing CPU load.  
- Provides **real-time pose estimates**.  
✅ **Alternative:** If you want **stereo-based VIO**, use `VINS-Fusion` with Isaac ROS.

---

### **2️⃣ Stereo Depth + Feature Matching (For Mapping)**

✅ **Use:** `isaac_ros_stereo_image_proc` + `isaac_ros_orb3` (or SIFT)  
✅ **Output:**  
- **Disparity map + depth map** (from stereo images).  
- **Feature matching** using ORB/SIFT.  
✅ **Why?**  
- **Stereo camera data → depth map → 3D structure of the environment**.  
- Provides **key features** for better loop closure.  
- Can be **fed into GTSAM** to improve SLAM accuracy.

---

### **3️⃣ GTSAM Graph Optimization (For Error Correction)**

✅ **Use:** `isaac_ros_nitros` + `GTSAM`  
✅ **Input:**  
- **Odometry from Isaac ROS VSLAM**.  
- **Loop closure constraints** (feature matches from ORB/SIFT).  
- **IMU preintegrated factors** (for drift correction).  
✅ **Why?**  
- **Optimizes trajectory using pose graph SLAM**.  
- **Corrects drift in long-term mapping**.  
- Runs on **GPU for real-time optimization**.  
✅ **Alternative:** If needed, add **loop closure detection** (`DBoW2`) for global consistency.

---

### **4️⃣ 3D Occupancy Map Generation (For Environment Representation)**

✅ **Use:** `isaac_ros_depth_image_proc` + `OctoMap`  
✅ **Input:**  
- **Depth map from stereo camera** (`Isaac ROS Depth Processing`).  
- **Optimized camera pose from GTSAM**.  
✅ **Why?**  
- Converts **stereo depth** into a **3D point cloud**.  
- Uses **pose-optimized depth** to build a **3D occupancy grid**.  
- **Efficient mapping** of occupied vs. free space.

---

## **🔹 Full Isaac ROS + GTSAM SLAM Workflow**

1️⃣ **Stereo Camera + IMU Data Ingested**  
2️⃣ **Isaac ROS Visual SLAM** → Outputs **Visual-Inertial Odometry (VIO)**  
3️⃣ **Stereo Depth Estimation + Feature Extraction**  
4️⃣ **GTSAM Optimization (GPU-Accelerated Factor Graph SLAM)**  
5️⃣ **3D OctoMap Built Using Optimized Poses + Depth Data**  

---

## **🔹 Summary of Benefits**

🚀 **GPU-Accelerated** → Faster real-time SLAM processing  
📏 **Low-Drift Odometry** → IMU preintegration + ORB/SIFT tracking  
🗺 **Optimized Mapping** → GTSAM corrects errors & improves loop closures  
🔍 **Stereo Depth for Mapping** → Generates accurate **3D OctoMap**  

---

## **Decision-Making Process**

### **Comparison of Different Approaches**
To evaluate the best SLAM pipeline, we compared several approaches based on **accuracy, computational efficiency, and hardware compatibility**:

1️⃣ **ORB-SLAM3 + IMU** (Standalone)  
   - ✅ **Accurate VIO** with IMU preintegration.  
   - ❌ **High CPU usage**, no GPU acceleration.  
   - ❌ No built-in stereo depth processing.

2️⃣ **VINS-Fusion** (Stereo VIO)  
   - ✅ **Stereo-based VIO**, great for accuracy.  
   - ❌ More computationally expensive than ORB-SLAM3.  
   - ❌ Requires additional depth map processing.

3️⃣ **Isaac ROS Visual SLAM + Stereo Depth + GTSAM (Chosen Approach)**  
   - ✅ **GPU-accelerated feature tracking** for real-time performance.  
   - ✅ **Built-in stereo depth processing** with `isaac_ros_stereo_image_proc`.  
   - ✅ **GTSAM graph optimization** improves long-term drift correction.  
   - ✅ **Supports real-time OctoMap occupancy grid mapping**.



Challenges in Outdoor Arable Fields ⚠

1️⃣ Vegetation Causes Visual Challenges

    ORB/SIFT-based visual SLAM relies on feature tracking, which might struggle in vegetation-dense areas due to:

        Repetitive textures (e.g., leaves look similar).

        Motion blur from wind.

        Varying lighting conditions (sunlight shadows).
        🔹Possible Solution:

    Consider deep-learning-based feature extraction (e.g., SuperGlue or DROID-SLAM)

2️⃣ Stereo Depth Limitation in Open Fields
Stereo relies on disparity (difference between left & right camera images).
In large, open fields, features in the far distance may not generate good depth estimates.
🔹Possible Solution:

Complement with GPS or RTK-GPS for absolute positioning.

Use multi-frame stereo fusion (integrate multiple frames to improve depth).

3️⃣ Rolling Terrain & Vegetation Occlusion
If the field has uneven terrain, stereo cameras may struggle with depth accuracy.
Tall crops (corn, wheat) might occlude the view, causing mapping gaps.
🔹Possible Solution:

IMU fusion with depth can improve estimates.

Add ground-facing depth sensors (e.g., ToF or radar) for better ground profiling.

Final Verdict: Is This SLAM Setup Good for Outdoor Fields?

✅ YES, IF:

    Crops are structured (e.g., neatly arranged vegetable rows).

    Wind & lighting changes are handled (using AI-based features or sensor fusion).

    GPS/RTK is available for global localization / bounding box for the field to be traversed by the robot.

### **Justification for Final Choice**

The chosen approach **leverages NVIDIA's GPU acceleration**, making it more efficient than CPU-based solutions. Additionally:

- **Low-drift Odometry:** Isaac ROS Visual SLAM efficiently integrates IMU data.
- **Feature-Rich Mapping:** Stereo depth + ORB/SIFT improves loop closure.
- **Real-Time Optimization:** GTSAM corrects trajectory errors on GPU.
- **Scalability:** Modular approach allows further enhancements like AI-driven loop closures.

Given the combination of **high accuracy, real-time performance, and robust mapping**, **Isaac ROS + GTSAM SLAM** emerged as the best solution for the problem at hand.

---

# Nvblox

Nvblox is a library for reconstruction and mapping targeted at robotics applications. It builds a voxel-based map from depth-images and/or 3D LiDAR scans. The library outputs a mesh of the world in real-time and a cost map for use in path planning. The library has been used for navigating Autonomous Mobile Robots (AMRs) and for motion generation for robotic arms. The library is optimized for discrete NVIDIA GPUs and Jetson devices.

Nvblox builds a reconstructed map in the form of a TSDF (Truncated Signed Distance Function) stored in a 3D voxel grid. TSDF-based approaches like nvblox store the (signed) distance to the closest surface at each voxel. The surface of the environment can then be extracted as the zero-level set of this voxelized function. This approach is similar to 3D occupancy grid mapping approaches in which occupancy probabilities are stored at each voxel. Typically, TSDF-based reconstructions provide higher quality surface reconstructions.

Distance fields are useful for path planning. They provide an immediate means of checking potential future robot positions for collisions with the reconstructed environment. nvblox provides for construction of the full (non-truncated) distance field, also known as the ESDF (Euclidean Signed Distance Function).

The dual utility of distance functions for reconstruction and planning motivates their use in nvblox.

## Technical Details

https://nvidia-isaac-ros.github.io/concepts/scene_reconstruction/nvblox/technical_details.html

### Quickstart and Instalation

https://nvidia-isaac-ros.github.io/repositories_and_packages/isaac_ros_nvblox/isaac_ros_nvblox/index.html#quickstart

#### Examples

https://nvidia-isaac-ros.github.io/concepts/scene_reconstruction/nvblox/tutorials/tutorial_isaac_sim.html

https://nvidia-isaac-ros.github.io/concepts/scene_reconstruction/nvblox/tutorials/tutorial_realsense.html

https://nvidia-isaac-ros.github.io/concepts/scene_reconstruction/nvblox/tutorials/tutorial_multi_realsense.html

https://nvidia-isaac-ros.github.io/concepts/scene_reconstruction/nvblox/tutorials/tutorial_zed.html

https://nvidia-isaac-ros.github.io/concepts/scene_reconstruction/nvblox/tutorials/tutorial_hawk.html
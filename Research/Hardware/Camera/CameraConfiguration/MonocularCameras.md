# Monocular Camera Calibration

These instructions are specifically for a monocular camera. To calibrate a stereoscopic camera, see the camera_calibration instructions.

    Set up your development environment by following the Developer Environment Setup.

    Print a large checkerboard with known dimensions.

    This tutorial uses a 6x8 checkerboard with 200mm squares. Calibration uses the interior vertex points of the checkerboard, so a “7x9” board uses the interior vertex parameter “6x8” as in the example below. Checkerboards with specific dimensions can be downloaded here.

    Clone the ROS 2 usb_cam package:

    cd ${ISAAC_ROS_WS}/src && \
      git clone -b ros2 https://github.com/ros-drivers/usb_cam

Your camera vendor might offer a specific ROS 2-compatible camera driver package that can be used in place of the usb_cam package.

Launch the Docker container using the run_dev.sh script:

cd ${ISAAC_ROS_WS}/src/isaac_ros_common && \
  ./scripts/run_dev.sh

Inside the container, build, and source the workspace:

cd /workspaces/isaac_ros-dev && \
  colcon build --symlink-install && \
  source install/setup.bash

Run the usb_cam image publisher:

ros2 run usb_cam usb_cam_node_exe --remap __ns:=/my_camera --ros-args -p framerate:=30.0 -p image_height:=720 -p image_width:=1280

Attach another terminal to the Docker container using the run_dev.sh script:

cd ${ISAAC_ROS_WS}/src/isaac_ros_common && \
  ./scripts/run_dev.sh

Run the camera calibrator:

ros2 run camera_calibration cameracalibrator --size 6x8 --square 0.20 image:=/my_camera/image_raw camera:=/my_camera

Complete steps 6-8 from this camera calibration tutorial.

Make sure you press Calibrate and then the Save button.

You should see the following line in the second terminal:

('Wrote calibration data to', '/tmp/calibrationdata.tar.gz')

The calibration file will be stored at /tmp/calibrationdata.tar.gz.

After the calibration file has been saved, enter Ctrl+C in each terminal to stop the nodes.

Move the calibration file to the required location:

cd /workspaces/isaac_ros-dev/src/<isaac_ros_metapackage>/<isaac_ros_package>/config/ && \
tar -xvf /tmp/calibrationdata.tar.gz -C ./ ost.yaml && \
mv ost.yaml camera_info.yaml

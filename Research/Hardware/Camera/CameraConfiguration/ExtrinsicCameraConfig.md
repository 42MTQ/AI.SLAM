# Extrinsic Calibration for Mobile Robots

You can use these instructions to calibrate the positions and orientations of sensors on a mobile robot. This process is known as Extrinsic Calibration and it enables robotics functions that combine information from multiple sensor modalities.

The extrinsic calibration results are encoded in a URDF calibration file, which contains the relative position of different sensors on the robot.
Instructions
Extrinsic Calibration of Sensors in Custom Locations

We suggest evaluating existing calibration solutions from companies such as Main Street Autonomy (MSA) or Tangram Vision for your particular needs.

Make sure that the calibration solution supports the Extrinsic Calibration Requirements and that the resulting URDF calibration file follows the Isaac Requirements for URDF files.

The usual process for most calibration solutions include:

    Define a nominals URDF file and publish its transformations to the /tf_static topic, so that they can be recorded in the rosbag in the next step.

    Recording a rosbag with your robot. This step may include driving the robot in a particular motion or placing a calibration target around the robot.

    Processing the rosbag with a calibration tool or sharing it with the calibration provider. The calibration tool or service will generate a URDF calibration file.

    If the chosen calibration solution does not not support camera - ground calibration, you can complement the extrinsics calibration URDF with the output of the isaac_ros_ground_calibration tool.

    Placement of the URDF calibration file in the robot.

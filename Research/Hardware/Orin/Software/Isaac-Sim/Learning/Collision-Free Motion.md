# Teaching Collision-Free Motion for Autonomy 

Industrial robot training often occurs in specific settings like factories or fulfillment centers, where simulations help address challenges related to various robot types and chaotic environments. A critical aspect of these simulations is generating collision-free motion in unknown, cluttered environments.

Traditional motion planning approaches that attempt to address these challenges can come up short in unknown or dynamic environments. SLAM, or simultaneous localization and mapping, can be used to generate 3D maps of environments with camera images from multiple viewpoints. However, these maps require revisions when objects move and environments are changed.

The NVIDIA Robotics research team and the University of Washington introduced Motion Policy Networks (MπNets), an end-to-end neural policy that generates real-time, collision-free motion using a single fixed camera’s data stream. Trained on over 3 million motion planning problems and 700 million simulated point clouds, MπNets navigates unknown real-world environments effectively.

While the MπNets model applies direct learning for trajectories, the team also developed a point cloud-based collision model called CabiNet, trained on over 650,000 procedurally generated simulated scenes.

With the CabiNet model, developers can deploy general-purpose, pick-and-place policies of unknown objects beyond a flat tabletop setup. Training with a large synthetic dataset allowed the model to generalize to out-of-distribution scenes in a real kitchen environment, without needing any real data.

## How to Develop 

How Developers Can Get Started Building Robotic Simulators

Get started with technical resources, reference applications and other solutions for developing physically accurate simulation pipelines by visiting the NVIDIA Robotics simulation use case page.

Robot developers can tap into NVIDIA Isaac Sim, which supports multiple robot training techniques:

    Synthetic data generation for training perception AI models
    Software-in-the-loop testing for the entire robot stack
    Robot policy training with Isaac Lab

Developers can also pair ROS 2 with Isaac Sim to train, simulate and validate their robot systems. The Isaac Sim to ROS 2 workflow is similar to workflows executed with other robot simulators such as Gazebo. It starts with bringing a robot model into a prebuilt Isaac Sim environment, adding sensors to the robot, and then connecting the relevant components to the ROS 2 action graph and simulating the robot by controlling it through ROS 2 packages.


### Reference 
https://blogs.nvidia.com/blog/what-is-robotics-simulation/


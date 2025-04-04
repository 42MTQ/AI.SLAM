# Training quadruped locomotion in Isaac Lab

Goal

Train the Spot robot to track target x, y, and yaw base velocities while walking on flat terrain. 
Observation and action space

The target velocities are randomized at each reset and provided alongside the other observations shown in Figure 1. The action space includes only the 12 DOF joint positions, which are passed to the low-level joint controller as the reference joint positions.
Domain randomization

Various parameters are randomized at key training stages, as shown in Figure 1 under randomization parameters. These randomizations help the model ensure robustness for real-world deployment. This process is called domain randomization.
Network architecture and RL algorithm details

The locomotion policy is structured as a Multilayer Perceptron (MLP) with three layers, containing [512, 256, 128] neurons, and it was trained using the Proximal Policy Optimization (PPO) algorithm from RSL-rl, which is optimized for GPU computation. 
Prerequisites

To train the locomotion policies, you will need the following:

    A system equipped with an NVIDIA RTX GPU. For detailed minimum specifications, see the Isaac Sim documentation.
     NVIDIA Isaac Sim, Isaac Lab, and RSL-rl.

Usage

This section shows how to train the policy, replay it, and inspect the results. 
Train a policy
cd <path_to_isaac_lab>
./isaaclab.sh -p source/standalone/workflows/rsl_rl/train.py --task Isaac-Velocity-Flat-Spot-v0 --num_envs 4096 --headless --video --enable_cameras

--video --enable_cameras arguments record a video of the agent’s behavior during training; hence, it’s optional.
Play the trained policy

This step will play the trained model and export the .pt policy to .onnx in an exported folder in the log directory.
cd <path_to_isaac_lab>
./isaaclab.sh -p source/standalone/workflows/rsl_rl/play.py --task Isaac-Velocity-Flat-Spot-v0 --num_envs 64
Results

Video 1 demonstrates the trained policy in action on the Spot robot. The robot is able to walk on flat terrain by following the target x, y, and yaw velocities. With 4,096 environments and 15,000 iterations, equivalent to approximately 4 hours of training time on the NVIDIA RTX 4090 GPU, we achieved a training speed of 85,000 to 95,000 frames per second (FPS).


## Deploying on Orin

Deploying the trained RL policy on Spot with Jetson Orin

Deploying models trained in simulation to the real world for robotic applications poses several challenges, including real-time control, safety constraints, and other real-world conditions. The accurate physics and domain randomization features of Isaac Lab enable deploying the policy trained in simulation to the real Spot robot on Jetson Orin zero shot, achieving similar performance in both the virtual and real world.

Figure 2 shows the real Spot robot framework policy deployment. The policy neural network is loaded and inferred on the real robot. The same observations as in simulation are computed using the Boston Dynamics State API.

### How to 

Transferring the trained model to the Spot robot requires deploying the model to the edge and controlling the robot with low latency and high frequency. The NVIDIA Jetson AGX Orin high-performance computing capabilities and low-latency AI processing ensure rapid inference and response times, crucial for real-world robotics applications. Simulated policies can be directly deployed for inference, simplifying the deployment process.
Prerequisites

The following are needed for deployment:

    Spot robot with Jetson Orin attached and configured as a custom payload using the Ethernet port, power cable, and mounting bracket. Follow the setup instructions provided.
    Deployment code and Spot Python SDK from the Spot RL Researcher Kit.
    A PS4 Gamepad controller connected to Jetson Orin through Bluetooth.
    External PC to SSH into Jetson and run the code.
    Trained model and config file from Isaac Lab.

Hardware and network setup on Jetson Orin

    Install SDK Manager on an external PC with Ubuntu 22.04.
    Flash Jetson Orin with JetPack 6 using the SDK Manager by following the instructions on How to use SDK Manager to Flash L4T BSP. Restart when done.
    Connect Jetson Orin to a display port, keyboard, and mouse.
    Log in to Jetson Orin using the username and password set in Step 2.
    For communication between Jetson Orin and Spot, set up the wired network configuration manually for the Ethernet port on Jetson Orin. Read the instructions for choosing an IP address.
        Go to Settings -> Network -> Wired -> + add the information under IPv4 (Routes): Address – Jetson IP Address (we chose 192.168.50.5), Net Mask – 255.255.255.0, and Default Gateway -192.168.50.3
        Click the Add button

#### Reference

https://developer.nvidia.com/blog/closing-the-sim-to-real-gap-training-spot-quadruped-locomotion-with-nvidia-isaac-lab/

##### Example

https://www.youtube.com/watch?v=6UeinIV_sFQ&embeds_referring_euri=https%3A%2F%2Fdeveloper.nvidia.com%2F

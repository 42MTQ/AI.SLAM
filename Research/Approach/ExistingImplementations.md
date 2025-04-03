## Master Slam

## Pre-Requisites 

We run our system on a desktop with Intel Core i9 12900K
3.50GHz and a single NVIDIA GeForce RTX 4090. As our
system runs at roughly 15 FPS, we subsample every 2 frames
of the datasets to simulate real-time performance. Note that
we use the full resolution outputs from MASt3R, which
resizes the largest dimension to size 512.

Does never provide an accurate global map, and is only providing high local accuracy. Disregarding the matching of frames on a global scale.

Needs Dataset of objects encountered in scene to appropriately match point to point with 2 reference frames and the DB keyframe.

100gB VRAM used to train on dataset, to generate keyframe DB for comparison with actual frames.
4x RTX4090 used for training.

Highly optimized camera performance increases accuracy, but current setup expects a perfect picture taken by a monocular camera without blur.
--> The performance evaluated is highly situational, a picture in a real world appliance is never going to reach the same properties as the pictures that have been used for evaluation.

## Use

Uses a singular camera and matches two frames taken by that camera to known objects key frames, to get a reference point and localize the robot.

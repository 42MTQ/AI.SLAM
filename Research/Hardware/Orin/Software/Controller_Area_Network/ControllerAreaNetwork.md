# Controller Area Network CAN

## Reference

https://docs.nvidia.com/jetson/archives/r36.4/DeveloperGuide/HR/ControllerAreaNetworkCan.html

### Descripion

Aplies to: Jetson AGX Orin, Jetson Orin NX and Jetson Orin Nano series.

This topic describes the Time Triggered CAN (TTCAN) controller on the Always-On block of the NVIDIA SoC, and how to use it in user space.
Important Features

The Time Triggered CAN controller has several important features:

    It supports standard and extended frame transmission.

    Its CAN bus bit rate can be configured from 10 kbps to 1 Mbps.

    It supports CAN FD mode with a maximum data bit rate of 15 Mbps. All types of transceivers can achieve a 5 Mbps data bit rate.

    It can deliver higher data bit rates if you configure the TDCR (Transmission Delay Compensation Register) through its user space sysfs node.

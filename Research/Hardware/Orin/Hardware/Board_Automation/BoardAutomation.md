# Board Automation

The NVIDIA® Jetson AGX Orin™ developer kit carrier boards have a micro USB port, and the NVIDIA® Jetson Orin™ Nano developer kit carrier boards expose 12 pins from J14 that you can use for board automation and UART debug output.

You can control a Jetson AGX Orin Developer Kit carrier board with an integrated board automation solution called TOPO. TOPO connects to the host PC via a full-speed USB interface. Through this interface the host PC can:

    Communicate with the NVIDIA® Jetson™ UART port

    Automate commands like power on, power off, reset, and recovery

## Topo File

This file is specifically supported for InfiniBand and NVOS fabrics. It is generated using the ibdiagnettool with a specific command.

The following is example for topo file:

MQM8700 sw-ufm-hdr01
   P2 -4x-50G-> HCA_mlx5_3 swx-ufm3-04 mlx5_0/P1
   P3 -4x-50G-> HCA_mlx5_3 swx-ufm3-04 mlx5_1/P1
   P40 -4x-50G-> MQM9700 sw-ufm-ndr05 P62
   P5 -4x-50G-> HCA_mlx5_3 swx-ufm3-05 mlx5_2/P1
MQM9700 sw-ufm-ndr05
   P61 -4x-50G-> MQM8700 sw-ufm-hdr01 P39
   P62 -4x-50G-> MQM8700 sw-ufm-hdr01 P40

   

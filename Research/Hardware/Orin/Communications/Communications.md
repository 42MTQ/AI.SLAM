# Communications

## Description

This topic describes several special features that NVIDIA® Jetson™ Linux provides for communication with other devices and the end user:

### ToC


    PCIe Endpoint Mode describes a facility for communicating with another device through a shared PCIe bus.

    Enabling Bluetooth Audio describes use of the Bluetooth® interface to generate and receive audio on Jetson devices.

    Audio Setup and Development discusses how to set up and use the various hardware and software provisions for generating and receiving sound on Jetson devices.

    PCIe Endpoint Mode
        Hardware Requirements
        Flashing PCIe as Endpoint on a Jetson NX Xavier Series System
        Flashing PCIe as Endpoint on a Jetson AGX Xavier Series System
        Flashing PCIe as Endpoint on a Jetson AGX Orin Series System
        Flashing PCIe as Endpoint on a Jetson Orin NX/Nano Series System
        Connecting and Configuring the Devices
        Testing Procedures
            Prepare for Testing
            Accessing the Shared RAM on the Endpoint Device
            Accessing the Shared RAM on the Root Port System
            Testing Bidirectional Data Transfer
        Bringing up an Ethernet Interface over PCIe
            Custom Endpoint Function Driver
    Enabling Bluetooth Audio
        To enable Bluetooth audio
    Audio Setup and Development
        ASoC Driver for Jetson Products
            ALSA
            DAPM
            Device Tree
            ASoC Driver
        Audio Hub Hardware Architecture
        ASoC Driver Software Architecture
            Platform Driver
            Codec Driver
            ASoC Machine Driver
            Clocking and Power Management
        High Definition Audio
            Features Supported
            Software Driver Details
        USB Audio
            Features Supported
            Software Driver Details
        Board Interfaces
        40-pin GPIO Expansion Header
            Pinmux Configuration
            Device Tree Configuration for a Custom Audio Card
            Enable Codec Driver
            Update the Machine Driver to Support a Custom Audio Card
        HD Audio Header
            Audio Formats Supported
            Usage Guide
        Usage and Examples
            Examples: I2S
            Examples: DMIC
            Example: DSPK
            Examples: MVC
            Examples: AMX
            Examples: ADX
            Examples: SFC
            Examples: Mixer
            Examples: HDMI/DP Playback
            Examples: USB
        Troubleshooting
            No Sound Cards Found
            Sound Not Audible or Not Recorded
            I2S Software Reset Failed
            XRUN Observed During Playback or Capture
            Audio Pops and Clicks
            Get More Help on NVIDIA Developer Forum
            
### Reference

https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/text/SD/Communications.html

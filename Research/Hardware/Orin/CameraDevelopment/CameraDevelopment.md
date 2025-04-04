# Camera Development

This topic describes the camera software solution included in NVIDIA® Jetson™ Linux.

## Camera Development

This topic describes the camera software solution included in NVIDIA® Jetson™ Linux.

    Camera Software Development Solution
        Camera Architecture Stack
        Camera API Matrix
        Approaches for Validating and Testing the V4L2 Driver
            Applications Using libargus Low-Level APIs
            Applications Using GStreamer with the nvarguscamerasrc Plugin
            Applications Using GStreamer with V4L2 Source Plugin
            Applications Using V4L2 IOCTL Directly
        ISP Configuration
        Infinite Timeout Support
        Symlinks Changed by Mesa Installation
        Other References
    Sensor Software Driver Programming
        Camera Core Library Interface
        Direct V4L2 Interface
        Camera Modules and the Device Tree
            To add camera modules to a device tree
            Module Properties
        Individual Imaging Devices
            Device Properties
            Example Piece-Wise Linear Compression Function
            Example Digital Overlap WDR Exposure Frame (3840×2160)
            Port Binding
            Sensor Pixel Clock
            SerDes Pixel Clock
            Port Index
        V4L2 Kernel Driver (Version 1.0)
            Macro Definitions
            Sensor-Private Data
            Configuring Regmap
            Configuring Controls
            To link the controls to their control handlers
            Setting Up Control Registers
            Power Functions
            Setting Up the V4L2 Subdevice and Camera Common
            Control Handlers
            Device Tree Parser
            Media Controller Setup
            Sensor Driver Probing
            Setup of Media Controller
            Removing Sensor Drivers
        V4L2 Kernel Driver (Version 2.0)
            Macro Definitions
            Sensor-Private Data
            Register map (regmap)
            Sensor Controls
            Exposure Controls
            Fixed Point Format
            Control Handlers
            Setter Control Handlers (for Writing Settings)
            Fill-String Control Handlers (for Reading Settings)
            How Controls Are Implemented
            Registering the Controls
            How to provide the link to the control handlers
            Setting Up Registers for the Control Handler
            Read-Write Wrapper in the Register
            Power Functions
            Stream Functions
            Miscellaneous Functions
            Control Operations
            Boot-Time Initialization
        Loadable Kernel Module (LKM)
            To configure a sensor driver as a loadable module
            To load a new sensor module
        Kernel Configuration
        Device Registration
            Prerequisites
            Device-tree overlay
            To Create and Apply a DTB Overlay File
            Using the Jetson-IO Tool
            Using the Main Platform Device Tree File
            To register a device using the main platform device tree file
        Verifying the V4L2 Sensor Driver
            To run a v4l2-compliance test
            To run a v4l2-ctl test
        Debugging Tips
            To verify that driver name matches the name in the Device Tree
            To verify that all device names match the device tree
            To verify that the Device tree values match the hardware
            To verify that functions run to completion
            To verify that default values are correctly linked
            To verify that control register values are correct
            To verify that mode-specific settings are correct
            To verify that I2C accesses are working properly
            Configuring the Sensor Driver as a Loadable Kernel Module (LKM)
        Mode Tables
            To add a register mode table
            Register mode table considerations
        Camera Sensor Drivers Porting
            How to find differences between release 28 and the current release
            Changes for the V4L2 API
            Changes to Device Tree Properties
            Porting version 1.0 drivers to version 2.0
            Device Tree
            Driver
    Jetson Virtual Channel with GMSL Camera Framework
        Reference Setup
        GMSL Protocol
        GMSL Camera
        CSI Connectivity
            Jetson AGX Orin
            Jetson Xavier NX Series
            Jetson AGX Xavier Series
        Hardware Module Connectivity
        Software Framework and Programming
            Driver Framework
            Device Tree Programming
        Constraints
        Validation
        Known Issues
            General Issues
            Xavier-Specific
            Plugin Manager Board ID
    Argus NvRaw Tool
        Prerequisites for Use
        Camera Sensor Modes
        nvargus_nvraw Command
            nvargus_nvraw Usage
            Basic Examples
            Displaying Sensor Information
            Capturing Images
            Other Operations
            Limitations
    Camera Driver Porting
        Configuration Changes
        Sensor Driver File Name Changes
        Guarding Kernel Version-Specific Code
        dev_err() Function
        I2C API
        NVIDIA Capture Driver Code Path

### Reference

https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/text/SD/CameraDevelopment.html

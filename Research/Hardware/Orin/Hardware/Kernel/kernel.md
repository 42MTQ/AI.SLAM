
# Kernel

This topic discusses aspects of the NVIDIA® Jetson™ Linux kernel.

    Kernel Adaptation
        From Rel-32 Kernel 4.9 to rel-34 Kernel 5.10
            Compiler Update
            Plug-in Manager replaced by DTBO
            Carrier Board Customization Notes
            Minor Version Update
    Kernel Customization
        Obtaining the Kernel Sources with Git
            Prerequisites
            To Sync the Kernel Sources
        Manually Downloading and Expanding Kernel Sources
            To Manually Download and Expand the Kernel Sources
        Building the Kernel
            To Build the Kernel
            To Build the Real-Time Kernel
            Signing and Encrypting the Kernel, the kernel-dtb, and the initrd Binary Files
        Preparing to Build External Kernel Modules
            To Prepare the Jetson Linux Kernel Headers on a Jetson System
            To Prepare the Jetson Linux kernel Headers on a Non-Jetson System
            To Use a Manually Built Kernel Source Tree
            To Prepare a Kernel Source Tree that is not Built
        To Build External Kernel Modules
        To Build Display Kernel Modules
        Using the Jetson Linux Real-Time Kernel Package
    Generic Timestamp Engine
        Enabling the GTE Driver
            To enable the GTE device tree nodes
            To enable and compile the GTE kernel driver and test driver
        Running Sample GTE Tests
            To run the GTE test kernel driver
            To run the GTE user space sample application
            To display GTE device and GTE event statistics
    BMI088 IMU Driver
        Kernel Configuration
        BMI088 Driver
        Device Tree
            Required Properties
            Optional Properties
        Accelerometer IIO Attributes
        Gyroscope IIO Attributes
        Testing BMI088 Driver
        Hardware Timestampping Engine (GTE)
        Compile and Execute
        Accelerometer Sample Output
        Gyroscope Sample Output
    Boot Time Optimization
        Device Tree Nodes
        Environment Configuration
            Disable Console Printing over UART
        Compile-Time Configuration
        Asynchronous Probe
            To move the driver to another thread
        To reduce file system initialization time
        To disable audio configurations
        To modularize the kernel drivers
        To disable debugging
    Display Configuration and Bring-Up
        Common Display configurations for all Platforms
            Setting the HDMI or the DP Screen Resolution
            Mirroring or Extending Displays
        Orin specific Display Configuration
            Update DCB blob for Custom Carrier Boards
            Display Device Tree Parameters
            Changing the Display Function Between DP and HDMI
            Known Limitations
        Jetson Xavier platform specific configurations
            Hard-Coding Kernel Display Boot Mode for HDMI
            nvimp_util: A Tool for Calculating Memory Bandwidth for a Particular Display Configuration (IMP)
            Limitations with Seamless Display

## Reference

https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/text/SD/Kernel.html


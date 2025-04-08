# Camera Features and Concepts

This document covers various camera features and concepts in machine vision, robotics, and industrial applications.

## Four Acquisition Controls

1. **Single Frame Acquisition**  
   The camera captures one image/frame at a time. After each frame is captured, the system must trigger the next one.

2. **Continuous Acquisition**  
   The camera continuously captures frames without manual triggers, typically for real-time streaming.

3. **Software Trigger Acquisition**  
   The camera is triggered by software commands to capture a frame. This offers precise control over image capture.

4. **External Trigger Acquisition**  
   The camera is triggered by an external device or signal, useful in synchronized systems where external events dictate when to capture.

## Global Reset Release Shutter Mode

- **Global Reset Release Shutter**: Resets the sensor and releases the shutter simultaneously across all pixels, ensuring the entire image is captured simultaneously, reducing timing issues.

## Trigger Modes

1. **Frame Start**  
   The camera starts capturing a new frame when a trigger is received. Each trigger results in one captured frame.

2. **Frame Burst Start**  
   The camera captures multiple frames in rapid succession when triggered, useful for high-speed events or capturing fast-moving objects.

## Additional Camera Features

- **LUTs (Look-Up Tables)**  
  Used for transforming pixel values for adjustments such as color correction and contrast enhancement.

- **Storable User Sets**  
  Save and recall custom settings like exposure or white balance.

- **Timer**  
  A mechanism to trigger events based on time, like image captures or system actions.

- **Counter**  
  Increments with each trigger event, useful for logging or tracking operations.

## Image Processing Controls

### Decimation, Binning, Reverse X/Y, Digital Shift, and Black Level

- **Decimation**: Reduces resolution by discarding pixels, increasing frame rate or reducing data load.
- **Binning**: Combines pixels to improve sensitivity but reduces resolution.
- **Reverse X/Y**: Flips the image horizontally (X-axis) or vertically (Y-axis).
- **Digital Shift**: Adjusts the image position digitally without physical movement.
- **Black Level**: Adjusts the baseline black level for better dynamic range and true color representation.

### Adjustable Gamma

- **Gamma**: Optimizes image brightness, improving details in darker or lighter areas by adjusting the gamma curve.

## Color Model Support

- **Light Source Preset**: Adjusts white balance for various lighting conditions (e.g., daylight, tungsten).
- **Color Transformation Control**: Manipulates color balance or transforms color spaces.
- **Saturation**: Controls the intensity of colors in the image.

## Monochrome Models Support

- **Noise Reduction**: Reduces unwanted variations (noise) in monochrome images.
- **Sharpness**: Enhances edges and clarity in monochrome images.

## Remove Parameter Limit

- **Remove Parameter Limit**: Expands the range of exposure, gain, and white balance for flexible adjustments in challenging lighting conditions.

## Data Storage

- **16KB Data Storage**: Saves algorithm coefficients and custom configurations directly on the camera for easy access and consistency across uses.

## Compatibility and Standards

- **GenICam™ and USB3 Vision®**  
  Ensures camera compatibility with industry standards for interoperability:
  - **GenICam™**: A standard for machine vision camera interfaces.
  - **USB3 Vision®**: A standard for high-speed image transfer via USB 3.0.

## Software and Hardware Support

- **3rd-Party Software Support**  
  Compatible with popular software like:
  - **HALCON** (machine vision software)
  - **MERLIC** (easy-to-use vision software)
  - **LabVIEW** (graphical programming)

- **Optimized Software Package**  
  Supports 32-bit and 64-bit Windows, Linux, Android, and ARM architectures.

- **SDKs (Software Development Kits)**  
  Includes samples and tools for easy integration into various programming environments.

## Regulatory Compliance

- **CE**: Compliance with European health, safety, and environmental standards.
- **RoHS**: Restriction of hazardous substances in camera components.
- **FCC**: Compliance with U.S. Federal Communications Commission standards for electromagnetic interference.
- **GenICam**: Interoperability standard for machine vision systems.
- **USB3 Vision**: A high-speed transfer standard for USB 3.0.

## Focal Length of Cameras

Both, the magnification and the angle of view, or how much of the scene will be caught, depend on the focal length of the lens. Magnification increases and the field of view narrows as the focal length increases. More expansive angles of view and lower magnifications result in a shorter focal length.

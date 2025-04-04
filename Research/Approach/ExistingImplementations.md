# Master SLAM

A learned, feature-based SLAM system leveraging object-centric keyframe matching for high local accuracy localization.

## System Requirements & Pre-Requisites

- **CPU**: Intel Core i9-12900K @ 3.50GHz
- **GPU**: NVIDIA GeForce RTX 4090
- **Performance**: ~15 FPS (simulated by subsampling every 2 frames)
- **Input Resolution**: Full-resolution outputs resized to 512px on the largest dimension (as per MASt3R configuration)

## Training Setup

- **Training Hardware**: 4× RTX 4090 GPUs
- **VRAM Usage**: ~100 GB during training
- **Purpose**: Generate a keyframe database from object-centric datasets

### Keyframe Matching:

- Two input frames from a monocular camera
- Matched against keyframes in the database
- Requires the dataset to contain previously seen objects

## Limitations & Caveats

- **No Global Map Generation**: 
  - Only provides high local accuracy
  - Fails to match frames consistently across a global scale
- **Highly Dependent on Input Image Quality**: 
  - Expects perfect monocular images
  - Cannot tolerate blur, motion artifacts, or poor lighting
  - Evaluation was performed under ideal image conditions
- **Not Suitable for Real-World Deployment**: 
  - Accuracy degrades significantly in dynamic, outdoor, or uncontrolled environments
  - Performance is highly situational and non-generalizable

## Core Functionality

- **Camera Type**: Single monocular camera
- **Localization Process**:
  - Captures two frames from the live camera feed
  - Matches both frames to keyframes in the database
  - Localizes the robot based on object-feature correspondence
- **Key Requirement**: The scene must include objects present in the original training dataset

## Summary Table

| Feature                   | Description                                                                 |
|---------------------------|-----------------------------------------------------------------------------|
| **Accuracy**               | High local accuracy only                                                    |
| **Global Mapping**         | ❌ Not supported                                                             |
| **Image Requirements**     | High-resolution, blur-free monocular images                                  |
| **Dataset Dependency**     | Requires objects in scene to match trained keyframes                        |
| **Training Hardware**      | 4× RTX 4090 GPUs                                                            |
| **Runtime Requirements**   | 1× RTX 4090, Core i9 processor                                              |
| **Real-World Suitability** | ❌ Limited — works best in ideal or controlled conditions                     |

## Conclusion

MASt3R SLAM is optimized for object-centric matching using known keyframes and performs well in lab-grade, high-quality image conditions. However, it:

- Does not build a global map
- Cannot handle unseen or unstructured environments reliably
- Requires pre-trained datasets of the objects present in the scene

It is best suited for static, indoor environments with controlled lighting and known object layouts, but is not recommended for dynamic, real-world field deployments without significant adaptation.

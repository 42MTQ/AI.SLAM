# Meshroom for Beginners: A Summary

**Meshroom** is a powerful, open-source 3D reconstruction software based on **Photogrammetry**, which turns 2D images into 3D models. This tutorial walks through the basics of using Meshroom to create 3D models, from importing images to exporting the final result.

## Key Concepts

- **Photogrammetry**: A technique used to reconstruct 3D objects from 2D images by analyzing the overlap between the images and extracting the 3D structure of the scene.
- **Meshroom**: A software suite that integrates various photogrammetry algorithms, providing a user-friendly interface for 3D reconstruction.

## Installation and Setup

1. **Download Meshroom**: Go to the [official Meshroom website](https://github.com/alicevision/meshroom) to download the software.
2. **System Requirements**: Ensure you have a GPU (recommended NVIDIA) to accelerate the photogrammetry process.
3. **Extract Files**: After downloading, extract the files to a preferred folder.

## Workflow in Meshroom

### 1. **Add Images**
   - Import images into the Meshroom workspace. Ensure your images have good overlap to help the software compute depth and 3D structure.

### 2. **Align Images**
   - This step involves the software matching features between images to create a sparse 3D model. The better the image alignment, the more accurate the reconstruction will be.

### 3. **Build the 3D Model**
   - Meshroom uses a series of nodes that process the images, including **Feature Extraction**, **Image Matching**, **Structure from Motion (SfM)**, and **Meshing** to generate the 3D model.

### 4. **Refine the Model**
   - Meshroom allows for refining the mesh with additional tools such as smoothing, meshing, and texture mapping.

### 5. **Export the Model**
   - Once the model is generated, you can export it to common 3D formats like **OBJ**, **FBX**, or **PLY**.

## Advanced Tips

- **Camera Calibration**: Calibrating your camera can improve accuracy, especially if using a non-professional camera.
- **Image Quality**: High-quality, well-lit, and high-resolution images will produce the best results.
- **Use Markers**: Placing markers in the scene can improve alignment accuracy.

## Conclusion

Meshroom is a powerful tool for creating 3D models from 2D images using photogrammetry. With a GPU and good-quality images, you can easily produce accurate 3D models for various applications like AR/VR, game development, or even robotics.



# Reference
https://sketchfab.com/blogs/community/tutorial-meshroom-for-beginners


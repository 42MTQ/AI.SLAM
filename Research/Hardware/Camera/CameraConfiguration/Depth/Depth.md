# Depth Sensing Overview

The ZED stereo camera reproduces the way human binocular vision works. Human eyes are horizontally separated by about 65 mm on average. Thus, each eye has a slightly different view of the world around. By comparing these two views, our brain can infer not only depth but also 3D motion in space.

Likewise, Stereolabs’ stereo cameras have two eyes separated allowing them to capture high-resolution 3D video of the scene and estimate depth and motion by comparing the displacement of pixels between the left and right images.
Depth Perception #

Depth perception is the ability to determine distances between objects and see the world in three dimensions. Up until now, depth sensors have been limited to perceiving depth at short range and indoors, restricting their application to gesture control and body tracking. Using stereo vision, the ZED is the first universal depth sensor:

    Depth can be captured at longer ranges, up to 35m.
    Field of view is much larger, up to 110° (H) x 95° (V).
    The camera works indoors and outdoors, contrary to active sensors such as structured-light or time of flight.

Depth Map #

Depth maps captured by the ZED store a distance value (Z) for each pixel (X, Y) in the image. The distance is expressed in metric units (meters for example) and calculated from the back of the left eye of the camera to the scene object.

Depth maps cannot be displayed directly as they are encoded on 32 bits. To display the depth map, a color image representation is used, where depth values are mapped to a color scale, allowing for an intuitive visualization of depth variations in the scene.
Left ImageDepth Map

3D Point Cloud #

Another common way of representing depth information is by a 3D point cloud. A point cloud can be seen as a depth map in three dimensions. While a depth map only contains the distance or Z information for each pixel, a point cloud is a collection of 3D points (X,Y,Z) that represent the external surface of the scene and can contain color information.
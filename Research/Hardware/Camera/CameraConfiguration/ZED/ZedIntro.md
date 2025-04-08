# Zed Depth Camera Intro

## The ZED depth camera

is a passive depth ranging tool without an active ranging
device because it does not contain an IR laser projector. This depth camera employs a
binocular camera to capture 3D scene data, measures the disparity of the objects using a
stereo matching algorithm, and ﬁnally calculates the depth map according to the sensor
parameters.

## The ZED depth sensor

is composed of stereo cameras with a video resolution of
2560 × 1440 pixels (2K) with dual 4 mega-pixel RGB sensors. The two RGB cameras are
at a ﬁxed base distance of 12 cm. This base distance allows the ZED camera to generate
a depth image up to 20 m (40 m is the maximum distance in the new updated ﬁrmware,
according to the Stereolabs datasheet) [ 16 ]. The camera contains a USB video device class
supported USB 3.0 port backward compatible with the USB 2.0. standard. It should be
noted that the ZED 3D depth sensor is optimized for real-time depth calculation using
NVidia Compute Uniﬁed Device Architecture technology [ 16]. Therefore, a corresponding
graphical processing unit (GPU) and appropriate computer hardware are required to use
it 

## The ZED sensor

uses wide-angle optical lenses with a FOV of 110◦, and it can stream
an uncompressed video signal at a rate up to 100 fps in Wide Video Graphics Array (WVGA)
format. The depth image is provided with a 32-bit resolution. Hence, the camera gives a
very accurate and precise depth image that describes the depth differences, i.e., the different
distances from the plane of the camera. Right and left video frames are synchronized
and streamed as a single uncompressed video frame in the side-by-side format. Various
conﬁgurations and capturing parameters of the on-board image signal processor, such as
brightness, saturation, resolution, and contrast, can be adjusted through the SDK provided
by Stereolabs [ 16 ]. Furthermore, ZED devices support several software packages, called
“wrappers,” such as ROS, MATLAB, Python, etc. All these software packages allow the
modiﬁcation of different parameters depending on the user requirements, such as the
image quality, depth quality, sensing mode, name of topics, quantity of frames per second,
etc. [16–20].

## ZED 2i is the ﬁrst stereo depth camera that uses artiﬁcial neural networks (ANNs)
 
to reproduce human vision, bringing stereo perception to a new level [16]. It contains a
neural engine that signiﬁcantly improves the captured depth image or depth video stream.
This ANN is connected to the image DSP, and they contribute jointly to creating the best
possible depth map [16 ]. Furthermore, the ZED 2i camera has a built-in object detection
algorithm [16 ]. This algorithm detects objects with spatial context. It combines artiﬁcial
intelligence with 3D localization to create next-generation spatial awareness [ 16 ]. There
is also a built-in skeleton tracking option that uses 18x body key points for the tracking
application. The algorithm detects and tracks human body skeletons in real time. The
tracking result is displayed via a bounding box, and the algorithm works up to a 10 m
range [16].

## Next, this ZED 2i camera has an enhanced positional tracking algorithm

that is a
signiﬁcant improvement suitable for robotic applications [ 16 –21 ]. This beneﬁt arises from a
wide 120◦ angle FOV, advanced sensor stack, and thermal calibration for greatly improved
positional tracking precision and accuracy [ 16]. The ZED 2i depth camera has a built-in
inertial measurement unit, barometer, temperature sensor, and magnetometer. All these
sensors provide extraordinary opportunities for easy and accurate multi-sensor capturing.
These sensors are factory calibrated on nine axes with robotic arms [ 16 ]. The data rates of
the position sensors, i.e., the barometer and magnetometer, are 25 Hz/50 Hz. The built-in
motion sensors, accelerometer, and gyroscope contribute signiﬁcantly to the development
of robotic applications since there is no need to install any other sensor except the ZED
Machines 2022, 10, 183 7 of 26
2i camera itself. The data rate of these sensors is 400 Hz. The thermal sensors monitor
the temperature and compensate for the drifts caused by heating. In this way, gathered
real-time synchronized inertial, elevation, and magnetic ﬁeld data along with image and
depth are collected. These sensors also contribute to accurate and precise depth sensing.
The all-aluminum frame reduces the camera heating that induces changes in focal length
and motion sensor biases.

## Furthermore, the ZED 2i has an optional feature: the polarizing ﬁlter.

This built-in polarizing ﬁlter gives the highest possible image quality in various outdoors
applications. This lens helps to reduce glare and reﬂections and increases the color depth
and quality of the captured images 

## Conclusion

This review research presented a detailed overview of the D435, D415, ZED, and ZED
2i depth sensors. The principal features of the depth sensors were described and compared.
A series of experiments were conducted in various lighting conditions with various objects,
and adequate measurement comparisons were made. Based on the experiments, all the
analyzed depth cameras were suitable for applications where robot spatial orientation and
obstacle avoidance were mandatory in conjunction with image vision. On the other hand,
in robotic vision applications where high precision and accuracy were mandatory, the ZED
and ZED 2i depth sensors yielded better results. Further, it is shown, that the use of an
artiﬁcial illumination source can improve the depth measurement in certain applications.
Finally, in applications where the required objects were very dark and textureless, along
with dim illumination and shadows, the ZED 2i depth sensor generated the most reliable
and accurate depth map of the real scene.


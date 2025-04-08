# IntelRealSense Depth Camera

RealSense technology comprises a microprocessor for image processing, a module
for creating depth images, an IR emitter, a segment for tracking movements, and depth
sensors. These depth sensors are built on deep scanning technology, which allows devices
to see shapes and objects in the same manner as humans. The complete hardware is also
supported by appropriate open-source Software Development Kit (SDK) software called
librealsense [ 7]. This software platform provides simple software support for all RealSense
cameras. The software platform supports C/C++, ROS (Robot Operating System), Python,MATLAB, etc., systems and programming languages for the development of appropriate
and various applications. Intel also provides two applications for the setup and use of the
cameras [8].

## These RealSense sensors principally differ in the field of view (FOV)

measured in angles and the type of shutter that tunes the exposure.
The D435 camera has a wider FOV (H × V × D—Horizontal × Vertical × Diagonal):
91◦ × 65◦ × 100◦ for RGB camera, which minimizes blind, black spots in the depth map,
after which the acquired depth image is pleasing to the eye. The FOV of the corresponding
depth sensor is (H × V × D): 85◦ × 58◦ × 90◦. As a result, this depth sensor is suitable
for applications where no great accuracy and precision are required, but where a global
visual experience is more significant.

## Accuracy

is the percentage of error with respect to
the measured depth, while 

## precision

is the capability of the sensors to replicate the same
measure in the same conditions [ 16]. 

These are important parameters of depth sensors,
and they can be easily observed by observing the measured depth maps of a scene, or
object [7 ]. Usually, visual assessment is used in practice for the characterization of resulted
depth images [20 ,21 ]. 
Therefore, this sensor is often used in automotive applications and
in drones. Furthermore, this sensor has a global shutter that ensures a better performance
in situations where lighting is unsatisfactory, while capturing fast movements in a scene,
and reduces the effect of blurring in images [7].
The D435 depth camera also yields better
depth measurement results when the targeted objects are a few meters away from the
camera itself.

## The D415 depth camera

 has a narrower FOV (H × V × D): 69◦ × 42◦ × 77◦ for
RGB camera, and this property results in a higher density of pixels, thus increasing the
resolution of the depth map. Here, the FOV of the corresponding depth sensor is (H × V
× D): 65◦ × 40◦ × 70◦. Hence, if accuracy and precision are the main requirements in an
application, e.g., avoiding obstacles in robotics application and in object detection, the D415
depth sensor gives much better results. The RealSense D415 sensor has a rolling shutter.
This attribute improves the performance of this depth sensor when there are no unexpected
fast movements during image capturing, but the image is static [ 7, 11]. It should be noted
that the D415 depth camera yields better depth measurement results when the targeted
object is close to the sensor, i.e., 1 m or less. Both the D435 and D415 cameras yield the
best quality depth maps at about 60–70 cm from the scene, according to the literature [ 7, 11 ].

## StereoVision

RealSense sensors use stereovision to calculate depth [7]. The realization of stereovi-
sion consists of a right-side and a left-side sensor and of an IR projector. The IR projector
projects invisible IR rays that improve the accuracy and precision of the depth data in
scenes with poor textures. The right-side and left-side sensors capture the scene and send
information about the real image to the microprocessor. Based on the received data, the
image processor determines via stereometry calculation the depth values for each pixel of
the recorded image, thus correlating the values obtained with the right-side camera to the
image derived with the left-side camera. The depth data of each pixel processed in this
manner result in the depth image. By linking up successive depth images, a depth video
stream is generated.

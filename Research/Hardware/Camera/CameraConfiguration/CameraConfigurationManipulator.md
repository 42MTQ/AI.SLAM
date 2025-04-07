# Camera Calibration for Manipulator

These instructions are for extrinsics calibration of a Hawk or RealSense camera with a UR e-Series robot (tested with UR5e and UR10e). For dual-camera setups, please follow the Calibration Procedure twice (once for each camera), with only one camera plugged into the system each time.
Calibration Target
Supported Patterns

Both ArUco and ChArUco calibration targets are supported with this tutorial. For best results, we recommend a ChArUco pattern with an odd number of rows and a high number of markers, printed on the largest sized board that is suitable for the robot being calibrated.

The following ArUco pattern dictionaries are supported.

DICT_4X4_250

DICT_5X5_250

DICT_6X6_250

DICT_7X7_250

DICT_ARUCO_ORIGINAL
Target Printing

The calibration targets must be rigid without any noticeable bending when flat and during operation. We recommend using aluminum/LDPE composite for the required flatness and stiffness.

We recommend using calib.io to obtain high quality calibration targets. The targets used in this tutorial were purchased from calib.io.

If printing from a different source, ensure that the printed targets are:

        Non-glossy to minimize light reflections and glare.

        Black and white in color.

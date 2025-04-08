# ArUco Markers and Detection

An ArUco marker is a synthetic square marker composed by a wide black border and an inner binary matrix which determines its identifier (id). The black border facilitates its fast detection in the image and the binary codification allows its identification and the application of error detection and correction techniques. The marker size determines the size of the internal matrix. For instance a marker size of 4x4 is composed by 16 bits.

## Reference

https://docs.opencv.org/4.x/d5/dae/tutorial_aruco_detection.html

## User Opinion

Aruco are difficult to detect if they are far away or have significant tilt especially with Opencv. It's easier to work with regular chessboard features with custom features to differentiate the orientation. But yes many online tutorials will tell you to use Aruco boards. Many engineers will swear by Aruco or charuco because it's easier to develop code but experienced ones will tell you that they are not reliable in dynamic conditions.

## ArUco Generator

https://mecaruco2.readthedocs.io/en/latest/notebooks_rst/Aruco/aruco_basics.html

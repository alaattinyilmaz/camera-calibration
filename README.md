# camera-calibration
Camera calibration is a common problem in Computer vision. We implemented a camera calibration with a checker calibration object by use of corner detection, correspondence matching and a MATLAB toolbox for comparison.

## Procedure
I used a two checkerboards that is post on the wall as a calibration object. Then, I used Harris corner detection method to detect the corners in the image. After that, I need to to match some correspondence points in real worlds by creating a coordinate system and in camera pixels.

## Calibration Object
![Calibration Object](https://raw.githubusercontent.com/alaattinyilmaz/camera-calibration/master/calobject.jpg?raw=true)

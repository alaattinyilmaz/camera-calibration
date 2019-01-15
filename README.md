# camera-calibration
Camera calibration is a common problem in Computer vision. We implemented a camera calibration with a checker calibration object by use of corner detection, correspondence matching and a MATLAB toolbox for comparison.

### Procedure
1. I used a two checkerboards that is post on the wall as a calibration object. 
2. I used Harris corner detection method to detect the corners in the image. 
3. After that, I need to to match some correspondence points in real worlds by creating a coordinate system and in camera pixels.
4. This was a hard task because we entered each corners’ pixels and real world coordinates manually.
5. We used 91 corners and created the a correspondence matrix (x pixel, ypixel, xrealworld, yrealworld, zrealworld).


### Calibration Object
![Calibration Object](https://raw.githubusercontent.com/alaattinyilmaz/camera-calibration/master/calobject.jpg?raw=true)

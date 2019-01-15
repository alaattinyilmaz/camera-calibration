# camera-calibration
Camera calibration is a common problem in Computer vision. We implemented a camera calibration with a checker calibration object by use of corner detection, correspondence matching and a MATLAB toolbox for comparison.

### Procedure
1. I used a two checkerboards that is post on the wall as a calibration object. 
2. I used Harris corner detection method to detect the corners in the image. 
3. After that, I need to to match some correspondence points in real worlds by creating a coordinate system and in camera pixels.
4. This was a hard task because we entered each corners’ pixels and real world coordinates manually.
5. We used 91 corners and created the a correspondence matrix (x pixel, ypixel, xrealworld, yrealworld, zrealworld).
6. After that I constructed our P matrix (see the PDF file for details)
7. Lastly I used SVD to get the m matrix that will be used to find the intrinsic and extrinsic parameters.

# Camera Calibration Toolbox for MATLAB 

I installed the calibration toolbox for MATLAB for comparison purposes. Actually I got reasonable results with this software.
Toolbox Link: http://www.vision.caltech.edu/bouguetj/calib_doc/

# Equations and Procedure Details

Actually the procedure above is a summary of my work. All the steps are explained detailly in my report:
Camera Calibration Report for all details: https://github.com/alaattinyilmaz/camera-calibration/blob/master/CameraCalibration.pdf

### Calibration Object
![Calibration Object](https://raw.githubusercontent.com/alaattinyilmaz/camera-calibration/master/calobject.jpg?raw=true)

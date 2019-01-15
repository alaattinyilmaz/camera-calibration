% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1366.964961527584819 ; 1363.472816739644259 ];

%-- Principal point:
cc = [ 600.870546755226201 ; 802.210712912413442 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.019559966030274 ; 0.010990680909064 ; 0.004394274890359 ; -0.000259674186586 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 9.422353329376056 ; 8.451975949818307 ];

%-- Principal point uncertainty:
cc_error = [ 16.058719318018280 ; 18.889923824182830 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.034692631509262 ; 0.136113107067880 ; 0.005406956874009 ; 0.004809622747519 ; 0.000000000000000 ];

%-- Image size:
nx = 1200;
ny = 1600;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.320603e+00 ; -1.450328e+00 ; 1.838548e-01 ];
Tc_1  = [ 2.538988e+00 ; -7.265985e+01 ; 2.746328e+02 ];
omc_error_1 = [ 1.115151e-02 ; 1.042252e-02 ; 1.385016e-02 ];
Tc_error_1  = [ 3.282280e+00 ; 3.826392e+00 ; 1.946284e+00 ];

%-- Image #2:
omc_2 = [ -2.043204e+00 ; -1.951902e+00 ; -1.049993e+00 ];
Tc_2  = [ -3.014534e+01 ; -1.472772e+00 ; 1.836776e+02 ];
omc_error_2 = [ 8.820503e-03 ; 1.581445e-02 ; 1.863547e-02 ];
Tc_error_2  = [ 2.167674e+00 ; 2.561398e+00 ; 1.588349e+00 ];

%-- Image #3:
omc_3 = [ 1.995607e+00 ; 2.165615e+00 ; 1.474864e-01 ];
Tc_3  = [ 4.351320e+01 ; -1.483654e+02 ; 4.114673e+02 ];
omc_error_3 = [ 1.559297e-02 ; 1.540245e-02 ; 3.072519e-02 ];
Tc_error_3  = [ 5.089454e+00 ; 5.809817e+00 ; 3.958657e+00 ];

%-- Image #4:
omc_4 = [ -1.974581e+00 ; -1.841968e+00 ; -6.891920e-01 ];
Tc_4  = [ -3.805450e+01 ; -6.762269e-01 ; 2.125921e+02 ];
omc_error_4 = [ 9.938187e-03 ; 1.420698e-02 ; 1.859999e-02 ];
Tc_error_4  = [ 2.501415e+00 ; 2.957866e+00 ; 1.801856e+00 ];

%-- Image #5:
omc_5 = [ -2.084427e+00 ; -1.566290e+00 ; 1.244342e+00 ];
Tc_5  = [ -3.601480e+01 ; -3.418645e+01 ; 3.330411e+02 ];
omc_error_5 = [ 1.527396e-02 ; 7.799780e-03 ; 1.838023e-02 ];
Tc_error_5  = [ 3.962556e+00 ; 4.623122e+00 ; 1.833807e+00 ];

%-- Image #6:
omc_6 = [ -1.280398e+00 ; -1.369805e+00 ; 1.001146e+00 ];
Tc_6  = [ 6.083085e+01 ; -6.440806e+01 ; 3.190872e+02 ];
omc_error_6 = [ 1.269254e-02 ; 9.816406e-03 ; 1.333651e-02 ];
Tc_error_6  = [ 3.834497e+00 ; 4.486041e+00 ; 1.995449e+00 ];

%-- Image #7:
omc_7 = [ 1.495471e+00 ; 1.818543e+00 ; 9.034343e-02 ];
Tc_7  = [ -1.689438e+01 ; -7.214700e+01 ; 2.045520e+02 ];
omc_error_7 = [ 1.171156e-02 ; 1.060435e-02 ; 1.568592e-02 ];
Tc_error_7  = [ 2.446264e+00 ; 2.844206e+00 ; 1.590193e+00 ];

%-- Image #8:
omc_8 = [ 2.084600e+00 ; 2.087339e+00 ; -8.917230e-01 ];
Tc_8  = [ -3.083653e+01 ; -6.444513e+01 ; 2.674916e+02 ];
omc_error_8 = [ 9.380584e-03 ; 1.433499e-02 ; 1.975635e-02 ];
Tc_error_8  = [ 3.202161e+00 ; 3.697645e+00 ; 1.695678e+00 ];

%-- Image #9:
omc_9 = [ 1.642686e+00 ; 1.802366e+00 ; 8.602057e-01 ];
Tc_9  = [ -2.137254e+01 ; -3.175941e+01 ; 1.911736e+02 ];
omc_error_9 = [ 1.345311e-02 ; 8.107649e-03 ; 1.681625e-02 ];
Tc_error_9  = [ 2.263352e+00 ; 2.664136e+00 ; 1.512710e+00 ];

%-- Image #10:
omc_10 = [ -1.430151e+00 ; -1.500254e+00 ; 2.812312e-01 ];
Tc_10  = [ -2.764655e+00 ; -6.110710e+01 ; 2.625989e+02 ];
omc_error_10 = [ 1.103524e-02 ; 1.011290e-02 ; 1.451503e-02 ];
Tc_error_10  = [ 3.116162e+00 ; 3.640985e+00 ; 1.755023e+00 ];

%-- Image #11:
omc_11 = [ 1.715664e+00 ; 1.748720e+00 ; 8.344267e-01 ];
Tc_11  = [ 2.759058e+01 ; -6.312307e+01 ; 2.392312e+02 ];
omc_error_11 = [ 1.410014e-02 ; 9.451179e-03 ; 1.707802e-02 ];
Tc_error_11  = [ 2.876888e+00 ; 3.329597e+00 ; 2.090515e+00 ];

%-- Image #12:
omc_12 = [ 2.180917e+00 ; 1.712606e+00 ; 1.156867e+00 ];
Tc_12  = [ -1.482643e+01 ; -1.054434e+00 ; 1.418872e+02 ];
omc_error_12 = [ 1.563672e-02 ; 6.146724e-03 ; 1.916918e-02 ];
Tc_error_12  = [ 1.685860e+00 ; 1.964360e+00 ; 1.239893e+00 ];

%-- Image #13:
omc_13 = [ -1.941290e+00 ; -1.940414e+00 ; 9.431743e-01 ];
Tc_13  = [ 4.250762e+01 ; -7.886354e+01 ; 3.878143e+02 ];
omc_error_13 = [ 1.513132e-02 ; 1.041673e-02 ; 2.140028e-02 ];
Tc_error_13  = [ 4.648193e+00 ; 5.365266e+00 ; 2.605995e+00 ];

%-- Image #14:
omc_14 = [ -2.137027e+00 ; -2.138349e+00 ; -4.981100e-02 ];
Tc_14  = [ -2.328116e+01 ; -5.074680e+01 ; 3.588871e+02 ];
omc_error_14 = [ 2.050755e-02 ; 2.282957e-02 ; 4.497699e-02 ];
Tc_error_14  = [ 4.242363e+00 ; 4.990013e+00 ; 3.655205e+00 ];

%-- Image #15:
omc_15 = [ 1.757237e+00 ; 1.940282e+00 ; -6.375859e-01 ];
Tc_15  = [ -4.633031e+01 ; -5.776014e+01 ; 2.422835e+02 ];
omc_error_15 = [ 9.178621e-03 ; 1.297971e-02 ; 1.738347e-02 ];
Tc_error_15  = [ 2.874843e+00 ; 3.378631e+00 ; 1.592206e+00 ];

%-- Image #16:
omc_16 = [ -1.017703e+00 ; -2.000265e+00 ; 4.182208e-01 ];
Tc_16  = [ -1.190199e+01 ; -5.540807e+01 ; 2.230694e+02 ];
omc_error_16 = [ 9.888997e-03 ; 1.174498e-02 ; 1.594235e-02 ];
Tc_error_16  = [ 2.612980e+00 ; 3.104788e+00 ; 1.527590e+00 ];

%-- Image #17:
omc_17 = [ -1.814506e+00 ; -1.766519e+00 ; 8.933964e-01 ];
Tc_17  = [ 2.495223e+01 ; -8.780936e+01 ; 3.517697e+02 ];
omc_error_17 = [ 1.413525e-02 ; 8.754480e-03 ; 1.854304e-02 ];
Tc_error_17  = [ 4.239200e+00 ; 4.862127e+00 ; 2.370948e+00 ];

%-- Image #18:
omc_18 = [ 2.108537e+00 ; 2.128575e+00 ; 8.046791e-01 ];
Tc_18  = [ -2.922833e+01 ; -1.257612e+01 ; 2.292778e+02 ];
omc_error_18 = [ 1.485779e-02 ; 7.655226e-03 ; 2.235114e-02 ];
Tc_error_18  = [ 2.703958e+00 ; 3.186736e+00 ; 1.920634e+00 ];

%-- Image #19:
omc_19 = [ -1.356217e+00 ; -1.483378e+00 ; 2.060489e-01 ];
Tc_19  = [ 9.860163e+00 ; -8.361839e+01 ; 2.887162e+02 ];
omc_error_19 = [ 1.113998e-02 ; 1.022081e-02 ; 1.430051e-02 ];
Tc_error_19  = [ 3.476664e+00 ; 4.042479e+00 ; 2.094464e+00 ];

%-- Image #20:
omc_20 = [ -1.612994e+00 ; -1.462680e+00 ; 1.399661e+00 ];
Tc_20  = [ 4.405180e+01 ; -3.433754e+01 ; 3.278789e+02 ];
omc_error_20 = [ 1.394808e-02 ; 9.081433e-03 ; 1.522929e-02 ];
Tc_error_20  = [ 3.894839e+00 ; 4.565067e+00 ; 1.753749e+00 ];


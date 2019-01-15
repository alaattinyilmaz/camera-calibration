% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1363.510473853440999 ; 1361.082476364518470 ];

%-- Principal point:
cc = [ 603.644986283457797 ; 786.379470550402289 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.028031490471651 ; 0.024482213009112 ; -0.001490717837726 ; 0.002744418445472 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 2.262718467090898 ; 2.022659483116423 ];

%-- Principal point uncertainty:
cc_error = [ 3.878921785474340 ; 4.571829776668056 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.008672495057161 ; 0.034154327954430 ; 0.001362718733636 ; 0.001181091781930 ; 0.000000000000000 ];

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
omc_1 = [ -1.326782e+00 ; -1.451864e+00 ; 1.931843e-01 ];
Tc_1  = [ 2.006078e+00 ; -6.946024e+01 ; 2.749445e+02 ];
omc_error_1 = [ 2.725317e-03 ; 2.564942e-03 ; 3.353944e-03 ];
Tc_error_1  = [ 7.913318e-01 ; 9.267099e-01 ; 4.683857e-01 ];

%-- Image #2:
omc_2 = [ -2.048840e+00 ; -1.966029e+00 ; -1.044205e+00 ];
Tc_2  = [ -3.041822e+01 ; 6.619383e-01 ; 1.833256e+02 ];
omc_error_2 = [ 2.127511e-03 ; 3.842745e-03 ; 4.567234e-03 ];
Tc_error_2  = [ 5.229288e-01 ; 6.204570e-01 ; 3.853401e-01 ];

%-- Image #3:
omc_3 = [ 1.978718e+00 ; 2.155055e+00 ; 1.193029e-01 ];
Tc_3  = [ 4.265478e+01 ; -1.434239e+02 ; 4.139109e+02 ];
omc_error_3 = [ 3.659361e-03 ; 3.582837e-03 ; 7.271412e-03 ];
Tc_error_3  = [ 1.228481e+00 ; 1.413400e+00 ; 9.489531e-01 ];

%-- Image #4:
omc_4 = [ -1.980673e+00 ; -1.850650e+00 ; -6.906127e-01 ];
Tc_4  = [ -3.844406e+01 ; 1.856867e+00 ; 2.118017e+02 ];
omc_error_4 = [ 2.413613e-03 ; 3.481196e-03 ; 4.544424e-03 ];
Tc_error_4  = [ 6.028926e-01 ; 7.154760e-01 ; 4.358357e-01 ];

%-- Image #5:
omc_5 = [ -2.093640e+00 ; -1.562116e+00 ; 1.255746e+00 ];
Tc_5  = [ -3.667731e+01 ; -3.022780e+01 ; 3.336493e+02 ];
omc_error_5 = [ 3.719247e-03 ; 1.908405e-03 ; 4.445634e-03 ];
Tc_error_5  = [ 9.587784e-01 ; 1.124669e+00 ; 4.402491e-01 ];

%-- Image #6:
omc_6 = [ -1.289094e+00 ; -1.366804e+00 ; 1.008911e+00 ];
Tc_6  = [ 6.009218e+01 ; -6.065358e+01 ; 3.195824e+02 ];
omc_error_6 = [ 3.075798e-03 ; 2.400729e-03 ; 3.235387e-03 ];
Tc_error_6  = [ 9.252668e-01 ; 1.087714e+00 ; 4.783119e-01 ];

%-- Image #7:
omc_7 = [ 1.485903e+00 ; 1.815182e+00 ; 7.716372e-02 ];
Tc_7  = [ -1.731480e+01 ; -6.969813e+01 ; 2.055207e+02 ];
omc_error_7 = [ 2.808523e-03 ; 2.515465e-03 ; 3.776592e-03 ];
Tc_error_7  = [ 5.922131e-01 ; 6.921764e-01 ; 3.808521e-01 ];

%-- Image #8:
omc_8 = [ 2.075674e+00 ; 2.074234e+00 ; -8.988217e-01 ];
Tc_8  = [ -3.141981e+01 ; -6.125261e+01 ; 2.683653e+02 ];
omc_error_8 = [ 2.295683e-03 ; 3.490560e-03 ; 4.685089e-03 ];
Tc_error_8  = [ 7.731996e-01 ; 9.014882e-01 ; 4.051948e-01 ];

%-- Image #9:
omc_9 = [ 1.637375e+00 ; 1.803386e+00 ; 8.475487e-01 ];
Tc_9  = [ -2.196315e+01 ; -2.946790e+01 ; 1.912540e+02 ];
omc_error_9 = [ 3.265551e-03 ; 1.933016e-03 ; 4.061454e-03 ];
Tc_error_9  = [ 5.466124e-01 ; 6.469806e-01 ; 3.629030e-01 ];

%-- Image #10:
omc_10 = [ -1.434887e+00 ; -1.502304e+00 ; 2.924172e-01 ];
Tc_10  = [ -3.143850e+00 ; -5.814307e+01 ; 2.629725e+02 ];
omc_error_10 = [ 2.703709e-03 ; 2.498549e-03 ; 3.517425e-03 ];
Tc_error_10  = [ 7.522117e-01 ; 8.824690e-01 ; 4.220742e-01 ];

%-- Image #11:
omc_11 = [ 1.705862e+00 ; 1.749277e+00 ; 8.219052e-01 ];
Tc_11  = [ 2.699670e+01 ; -6.032112e+01 ; 2.394846e+02 ];
omc_error_11 = [ 3.405394e-03 ; 2.259285e-03 ; 4.121107e-03 ];
Tc_error_11  = [ 6.940215e-01 ; 8.080092e-01 ; 4.999330e-01 ];

%-- Image #12:
omc_12 = [ 2.171703e+00 ; 1.717026e+00 ; 1.144112e+00 ];
Tc_12  = [ -1.516157e+01 ; 5.774195e-01 ; 1.417048e+02 ];
omc_error_12 = [ 3.801084e-03 ; 1.468025e-03 ; 4.630898e-03 ];
Tc_error_12  = [ 4.075832e-01 ; 4.760938e-01 ; 3.005391e-01 ];

%-- Image #13:
omc_13 = [ -1.948794e+00 ; -1.940907e+00 ; 9.519164e-01 ];
Tc_13  = [ 4.167060e+01 ; -7.424789e+01 ; 3.890257e+02 ];
omc_error_13 = [ 3.630228e-03 ; 2.544937e-03 ; 5.182340e-03 ];
Tc_error_13  = [ 1.123863e+00 ; 1.305262e+00 ; 6.204880e-01 ];

%-- Image #14:
omc_14 = [ -2.128415e+00 ; -2.129256e+00 ; -3.930356e-02 ];
Tc_14  = [ -2.417322e+01 ; -4.651672e+01 ; 3.592783e+02 ];
omc_error_14 = [ 4.860515e-03 ; 5.443418e-03 ; 1.070884e-02 ];
Tc_error_14  = [ 1.027291e+00 ; 1.210581e+00 ; 8.797346e-01 ];

%-- Image #15:
omc_15 = [ 1.748482e+00 ; 1.929759e+00 ; -6.457464e-01 ];
Tc_15  = [ -4.687109e+01 ; -5.480711e+01 ; 2.424457e+02 ];
omc_error_15 = [ 2.207731e-03 ; 3.115611e-03 ; 4.146296e-03 ];
Tc_error_15  = [ 6.940473e-01 ; 8.212913e-01 ; 3.792055e-01 ];

%-- Image #16:
omc_16 = [ -1.025367e+00 ; -1.999921e+00 ; 4.314056e-01 ];
Tc_16  = [ -1.246137e+01 ; -5.279756e+01 ; 2.234478e+02 ];
omc_error_16 = [ 2.407926e-03 ; 2.882771e-03 ; 3.886947e-03 ];
Tc_error_16  = [ 6.310039e-01 ; 7.541847e-01 ; 3.658596e-01 ];

%-- Image #17:
omc_17 = [ -1.817862e+00 ; -1.759252e+00 ; 9.025545e-01 ];
Tc_17  = [ 2.411579e+01 ; -8.367391e+01 ; 3.521344e+02 ];
omc_error_17 = [ 3.418894e-03 ; 2.144837e-03 ; 4.474002e-03 ];
Tc_error_17  = [ 1.021689e+00 ; 1.180645e+00 ; 5.627449e-01 ];

%-- Image #18:
omc_18 = [ 2.097376e+00 ; 2.127230e+00 ; 7.891306e-01 ];
Tc_18  = [ -2.962860e+01 ; -9.973466e+00 ; 2.293265e+02 ];
omc_error_18 = [ 3.640182e-03 ; 1.873261e-03 ; 5.396592e-03 ];
Tc_error_18  = [ 6.535314e-01 ; 7.734132e-01 ; 4.648917e-01 ];

%-- Image #19:
omc_19 = [ -1.362768e+00 ; -1.482042e+00 ; 2.122723e-01 ];
Tc_19  = [ 9.115258e+00 ; -8.009743e+01 ; 2.894919e+02 ];
omc_error_19 = [ 2.729598e-03 ; 2.521984e-03 ; 3.461053e-03 ];
Tc_error_19  = [ 8.387006e-01 ; 9.800631e-01 ; 5.051982e-01 ];

%-- Image #20:
omc_20 = [ -1.621746e+00 ; -1.460877e+00 ; 1.407123e+00 ];
Tc_20  = [ 4.360158e+01 ; -3.049998e+01 ; 3.293613e+02 ];
omc_error_20 = [ 3.373656e-03 ; 2.219291e-03 ; 3.693383e-03 ];
Tc_error_20  = [ 9.453050e-01 ; 1.111484e+00 ; 4.202153e-01 ];


img = imread('calobject.jpg');
[row,col,ch] = size(img);
img = rgb2gray(img);

corners = corner(img,'Harris');
imshow(img);
hold on;
plot(corners(:,1),corners(:,2),'r*');

% pix, piy, x,y,z
corresp = [ 827 172  0 0 0; 913 188  1 0 0; 991 206  2 0 0; 1060 218 3 0 0; 1132 232 4 0 0; 1175 244 5 0 0; 1223 253 6 0 0;
            829 309  0 0 1; 913 319  1 0 1; 991 328  2 0 1; 1059 334 3 0 1; 1116 339 4 0 1; 1170 345 5 0 1; 1217 350 6 0 1;
            824 446  0 0 2; 988 445  1 0 2; 1052 446 2 0 2; 1111 446 3 0 2; 1163 446 4 0 2; 1213 447 5 0 2; 1258 447 6 0 2;
            827 576  0 0 3; 907 568  1 0 3; 983 562  2 0 3; 1048 557 3 0 3; 1107 551 4 0 3; 1159 546 5 0 3; 1254 537 6 0 3;
            821 706  0 0 4; 905 691  1 0 4; 983 675  2 0 4; 1047 664 3 0 4; 1106 651 4 0 4; 1156 643 5 0 4; 1203 635 6 0 4;
            823 832  0 0 5; 904 808  1 0 5; 978 789  2 0 5; 1046 769 3 0 5; 1103 754 4 0 5; 1153 740 5 0 5; 1200 726 6 0 5; 
            820 956  0 0 6; 902 926  1 0 6; 978 898  2 0 6; 1042 876 3 0 6; 1103 852 4 0 6; 1151 835 5 0 6; 1199 815 6 0 6;
            727 188 0 1 0; 642 201 0 2 0; 504 225 0 3 0; 450 238 0 4 0; 405 246 0 5 0; 356 355 0 6 0;
            728 316 0 1 1; 644 322 0 2 1; 572 329 0 3 1; 510 334 0 4 1; 454 339 0 5 1; 409 343 0 6 1;
            730 445 0 1 2; 644 443 0 2 2; 576 443 0 3 2; 514 443 0 4 2; 458 442 0 5 2; 410 441 0 6 2;
            731 571 0 1 3; 648 560 0 2 3; 576 552 0 3 3; 517 549 0 4 3; 460 540 0 5 3; 413 537 0 6 3;
            730 691 0 1 4; 648 676 0 2 4; 578 663 0 3 4; 520 652 0 4 4; 464 641 0 5 4; 416 632 0 6 4;
            728 809 0 1 5; 650 791 0 2 5; 581 773 0 3 5; 519 753 0 4 5; 463 736 0 5 5; 417 724 0 6 5;
            728 930 0 1 5; 649 900 0 2 5; 580 876 0 3 5; 521 856 0 4 5; 467 835 0 5 5; 418 813 0 6 5;
            ];

N = 91; % Number of corners that are used to calibrate our camera
L = 18; % Length of each square in mm
Pw = []; % Real world coordinates
Pc = []; % Camera coordinates in pixels
for j = 1:1:N
   Pc = [Pc; corresp(j,1) corresp(j,2) 1];
   Pw = [Pw; corresp(j,3)*L corresp(j,4)*L corresp(j,5)*L 1];
end
    
P = [];

for i = 1:1:N
P = [  P;
       Pw(i,:)  zeros(1,4) -Pc(i,1)*Pw(i,:);
       zeros(1,4)  Pw(i,:) -Pc(i,2)*Pw(i,:);
    ];
end

[U S V] = svd(P);
% Last column of V gives m
m = V(:,end);
m = transpose(reshape(m,[],3));

% Normalizing of M to make the norm of third rotation vector unity
norm_31 = norm(m(3,1:3));
M = m / norm_31;

a1 = M(1,1:3);  
a2 = M(2,1:3);
a3 = M(3,1:3);
b = M(1:3, 4);
r3 = a3;

% Computation of the intrinsic parameters
u_0 = transpose(a1*transpose(a3));
v_0 = transpose(a2*transpose(a3));
cross_a1a3 = cross(a1,a3);
cross_a2a3 = cross(a2,a3);
theta = acos (-1*cross_a1a3*transpose(cross_a2a3)/(norm(cross_a1a3)*norm(cross_a2a3)));
alpha = norm(cross_a1a3) * sin(theta);
beta = norm(cross_a2a3) * sin(theta);

% Computation of the extrinsic parameters
r1 = cross_a2a3/norm(cross_a2a3);
r2 = cross(r3, r1);
K = [alpha -1*alpha*cot(theta) u_0
     0 beta/sin(theta) v_0
     0 0 1];
t = inv(K) * b; % Translation vector

% Rotation matrix
R(1,1:3) = r1;
R(2,1:3) = r2;
R(3,1:3) = r3;

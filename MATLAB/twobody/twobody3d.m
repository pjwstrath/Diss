
function twobody3d

clc; clear all; close all

G = 6.67259e-20;

%...Input data:
m1 = 1.e26;
m2 = 1.e26;
t0 = 0;
tf = 480;
R1_0 = [ 0; 0; 0];
R2_0 = [3000; 0; 0];
V1_0 = [ 10; 20; 30];
V2_0 = [ 0; 40; 0];

%...End input data
y0 = [R1_0; R2_0; V1_0; V2_0];

%...Integrate the equations of motion:
[t,y] = rkf45(@rates, [t0 tf], y0);

%...Output the results:

output
return

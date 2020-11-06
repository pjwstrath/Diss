
clear all;close all;clc


m = 1;
z = 0.03;
wn =1;
Fo = 1;
w = 0.4*wn;

x0 = 0;
x_dot0 = 0;
f0 = [x0;x_dot0];

t0 = 0;
tf = 110;
tspan = [t0 tf];

rk = 1;
h = .01; [t1, f1] = rk1_4(@rates, tspan, f0, h, rk);
h = 0.1; [t11, f11] = rk1_4(@rates, tspan, f0, h, rk);
rk = 2;
h = 0.1; [t2, f2] = rk1_4(@rates, tspan, f0, h, rk);
h = 0.5; [t21, f21] = rk1_4(@rates, tspan, f0, h, rk);
rk = 3;
h = 0.5; [t3, f3] = rk1_4(@rates, tspan, f0, h, rk);
h = 1.0; [t31, f31] = rk1_4(@rates, tspan, f0, h, rk);
h = 1.0; [t4, f4] = rk1_4(@rates, tspan, f0, h, rk);
h = 2.0; [t41, f41] = rk1_4(@rates, tspan, f0, h, rk);


output
return


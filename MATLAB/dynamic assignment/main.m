clear
clc

a=0;%initial time
b=1000000;%final time
N=5000000;

% constants
ue = 3.986e14;   
m = 20000; %mass
re = 6378000;%radius of earth
s = 200;%sref
aoa = 5*pi/180;%angle of attack
Rn = 200;%radius of nose cone

%inputs
t0 = 0;%time
r0 = 6878000;%radius (distance from the centre of the earth)
vr0 = 0;%radial velocity
vt0 = 7000;%tangential velocity
V0 = 7000;%Velocity Vector
fpa0 = 0 ;%flight path angle
dvr0 = 0;%rate of change of radial velocity
dvt0 = 0;%rate of change of tangential velocity
cl0 = 0;%coeff lift
cd0 = 0;%coeff drag
L0 = 0;%lift
D0 = 0;%drag
alt0 = 500000;%altitude
theta0=0;%angular displacement
dtheta0 = 0;%rate of change of angular disp
ke0 = 0.5*m*V0^2;%kinetic energy
pe0 = m*(ue/r0)*alt0;%potential energy
Q0 = 0;%heat flux

%inititialise inputs
t(1) = t0;
r(1) = r0;
vr(1) = vr0;
vt(1) = vt0;
V(1) = V0;
fpa(1)=fpa0;
dvr(1) = dvr0;
dvt(1) = dvt0;
cl(1) = cl0;
cd(1) = cd0;
L(1) = 0;
D(1) = 0;
alt(1) = alt0;
theta(1) =theta0;
dtheta(1) = dtheta0;
Q(1) = Q0;

ke(1) = ke0;
pe(1) = pe0;

eulerorbitit%run euler method for solving equations of motion
%figures
figure(1)
plot(t,alt)

figure(2)
plot(t,vr)

figure(3)
plot(t,vt)

figure (4) 
plot (alt,V)

figure (5) 
plot(pe,ke)

figure(6) 
plot(t,aoa)

figure(7)
plot(t,fpa)

figure(8)
plot (t,Q)

clear % clear euler values

a=0;
b=1000;
N=5000;

ue = 3.986e14;   
m = 20000;
re = 6378000;
s = 20;
aoa = 0*pi/180;
Rn = 20;


t0 = 0;
r0 = 6878000;
vr0 = 0;
vt0 = 7000;
V0 = 7000;
fpa0 = 0 ;
dvr0 = 0;
dvt0 = 0;
cl0 = 0;
cd0 = 0;
L0 = 0;
D0 = 0;
alt0 = 500000;
theta0=0;
dtheta0 = 0;
ke0 = 0.5*m*V0^2;
pe0 = m*(ue/r0)*alt0;
Q0 = 0;

%inititialise inputs
t(1) = t0;
r(1) = r0;
vr(1) = vr0;
vt(1) = vt0;
V(1) = V0;
fpa(1)=fpa0;
dvr(1) = dvr0;
dvt(1) = dvt0;
cl(1) = cl0;
cd(1) = cd0;
L(1) = 0;
D(1) = 0;
alt(1) = alt0;
theta(1) =theta0;
dtheta(1) = dtheta0;
Q(1) = Q0;

ke(1) = ke0;
pe(1) = pe0;

rungekutta4orbit %run rungekutta 4 method

figure(9)
plot(t,alt)

figure(10)
plot(t,vr)

figure(11)
plot(t,vt)

figure (12) 
plot (alt,V)

figure (13) 
plot(pe,ke)

figure(14) 
plot(t,aoa)

figure(15)
plot(t,fpa)

figure(16)
plot (t,Q)








function output

%...Extract the particle trajectories:
X1 = y(:,1); Y1 = y(:,2); Z1 = y(:,3);
X2 = y(:,4); Y2 = y(:,5); Z2 = y(:,6);

%...Locate the center of mass at each time step:
XG = []; YG = []; ZG = [];

for i = 1:length(t)
XG = [XG; (m1*X1(i) + m2*X2(i))/(m1 + m2)];
YG = [YG; (m1*Y1(i) + m2*Y2(i))/(m1 + m2)];
ZG = [ZG; (m1*Z1(i) + m2*Z2(i))/(m1 + m2)];
end

%...Plot the trajectories:
figure (1)
title('Figure 2.3: Motion relative to the inertial frame')
hold on
plot3(X1, Y1, Z1, '-r')
plot3(X2, Y2, Z2, '-g')
plot3(XG, YG, ZG, '-b')
common_axis_settings

figure (2)
title('Figure 2.4a: Motion of m2 and G relative to m1')
hold on
plot3(X2 - X1, Y2 - Y1, Z2 - Z1, '-g')
plot3(XG - X1, YG - Y1, ZG - Z1, '-b')
common_axis_settings

figure (3)
title('Figure 2.4b: Motion of m1 and m2 relative to G')
hold on
plot3(X1 - XG, Y1 - YG, Z1 - ZG, '-r')
plot3(X2 - XG, Y2 - YG, Z2 - ZG, '-g')
common_axis_settings


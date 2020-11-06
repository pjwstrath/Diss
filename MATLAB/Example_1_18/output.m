function output
Fo = 1;
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

wd = wn*sqrt(1 - z^2);
den = (wn^2 -w^2)^2 + (2*w*wn*z)^2;
C1 = (wn^2 - w^2)/den*Fo/m;
C2 = -2*w*wn*z/den*Fo/m;
A = x0*wn/wd+ x_dot0/wd + (w^2 + (2*z^2 - 1)*wn^2)/den*wd*Fo/m;
B = x0 + 2*w*wn*z/den*Fo/m;

t = linspace(t0, tf, 5000);
x = (A*sin(wd*t) + B*cos(wd*t)).*exp(-wn*z*t) + C1*sin(w*t) + C2*cos(w*t);


subplot(5,1,1)
plot(t/max(t), x/max(x), 'k', 'LineWidth',1)
grid off
axis tight
title('Exact')

subplot(5,1,2)
plot(t1/max(t1), f1(:,1)/max(f1(:,1)), '-r', 'LineWidth',1)
hold on
plot(t11/max(t11), f11(:,1)/max(f11(:,1)), '-k')
grid off
axis tight
title('RK1')
legend('h = 0.01', 'h = 0.1')

subplot(5,1,3)
plot(t2/max(t2), f2(:,1)/max(f2(:,1)), '-r', 'LineWidth',1)
hold on
plot(t21/max(t21), f21(:,1)/max(f21(:,1)), '-k')
grid off
axis tight
title('RK2')
legend('h = 0.1', 'h = 0.5')

subplot(5,1,4)
plot(t3/max(t3), f3(:,1)/max(f3(:,1)), '-r', 'LineWidth',1)
hold on
plot(t31/max(t31), f31(:,1)/max(f31(:,1)), '-k')
grid off
axis tight
title('RK3')
legend('h = 0.5', 'h = 1.0')

subplot(5,1,5)
plot(t4/max(t4), f4(:,1)/max(f4(:,1)), '-r', 'LineWidth',1)
hold on
grid off
plot(t41/max(t41), f41(:,1)/max(f41(:,1)), '-k')
axis tight
title('RK4')
legend('h = 1.0', 'h = 2.0')

end






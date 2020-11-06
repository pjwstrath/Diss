function dfdt = rates(t,f)
Fo = 1;
m = 1;
z = 0.03;
wn =1;
Fo = 1;
w = 0.4*wn;
x = f(1);
Dx = f(2);
D2x = Fo/m*sin(w*t) - 2*z*wn*Dx - wn^2*x;
dfdt = [Dx; D2x];
end
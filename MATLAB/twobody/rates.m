function dydt = rates (t,y)

R1 = [y(1); y(2); y(3)];
R2 = [y(4); y(5); y(6)];
V1 = [y(7); y(8); y(9)];
V2 = [y(10); y(11); y(12)];
r = norm(R2 - R1);
A1 = G*m2*(R2 - R1)/r^3;
A2 = G*m1*(R1 - R2)/r^3;
dydt = [V1; V2; A1; A2];

end %rates
function Q = get_Q(Rn,V,alt)
[T,P,rho] = standard_atm(alt);
kh = 1.89e-8;
Q = kh*sqrt((rho/Rn)*V^3);
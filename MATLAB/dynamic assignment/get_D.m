function D = get_D(s,V,cd,alt)
[T, P, rho] = standard_atm(alt);
D=0.5*s*rho*V^2*cd;

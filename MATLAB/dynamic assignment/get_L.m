function L = get_L (s,V,cl,alt)

        



[T, P, rho] = standard_atm(alt);

L=0.5*s*rho*V^2*cl;














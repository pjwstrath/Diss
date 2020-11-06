function Q = get_Q(Rn,V,alt)
if alt >86000
    Q = 0;
else
    
[T,P,rho] = standard_atm(alt);
kh = 1.89e-8;
Q = kh*sqrt(rho/Rn)*V^3;
end

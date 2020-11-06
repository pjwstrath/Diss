function cl = get_cl(alt,V,alpha)

if alt >86000
    cl =0;
else if alt<=86000

k=1.4;
R = 287.058;
[T,P,rho]=standard_atm(alt);
c = (k*R*T).^(1/2);
ma = V/c;

load clfile.txt

alpha_list = clfile(1,2:end).*(pi/180);
ma_list = clfile(2:end,1);
cl_matrix = clfile(2:end,2:end);
cl = griddata(alpha_list(:),ma_list(:),cl_matrix,alpha,ma);
    end
end
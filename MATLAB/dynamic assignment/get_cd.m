function cd = get_cd(alt,v,alpha)

if alt >86000
    cd =0;
else if alt<=86000

k=1.4;
R = 287.058;
[T,P,rho]=standard_atm(alt);
c = (k*R*T)^(1/2);
ma = v/c;

load cdfile.txt

alpha_list = cdfile(1,2:end).*(pi/180);
ma_list = cdfile(2:end,1);
cd_matrix = cdfile(2:end,2:end);
cd = griddata(alpha_list(:),ma_list(:),cd_matrix,alpha,ma);
    end
end


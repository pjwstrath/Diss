function dvr = get_DVR(ue,r,vt,m,D,fpa,L)
dvr = ((-ue)/r^2)+((vt^2)/r)+(1/m)*(-D*sin(fpa)+L*cos(fpa));

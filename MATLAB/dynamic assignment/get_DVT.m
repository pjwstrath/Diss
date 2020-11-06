function dvt = get_DVT(vr,vt,r,m,D,fpa,L)
dvt = ((vr*vt)/r)+(1/m)*(-D*cos(fpa)-L*sin(fpa));
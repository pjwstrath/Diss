

h=(b-a)/N;




for n = 1:N
    if r(n)> re
    t(n+1) = t(n)+h;
    
    r(n+1) = r(n) + vr(n);
    alt(n+1) = r(n)-re;
    theta(n+1) = theta(n) + (vt(n)/r(n));
    pe(n+1) =m*(ue/r(n))*alt(n);
    ke(n+1) =0.5*m*(V(n)^2);
    Q(n+1) = get_Q(Rn,V(n),alt(n));
  
    
     V(n+1) = (vt(n)^2 + vr(n)^2)^(1/2);
    fpa (n+1) = atan((vr(n)/vt(n)));
    
    cl(n+1) = get_cl(alt(n),V(n),aoa);
    cd(n+1) = get_cd(alt(n),V(n),aoa);
    L(n+1) = get_L(s,V(n),cl(n),alt(n));
    D(n+1) = get_D(s,V(n),cd(n),alt(n));
    
    
  k11(n) = h*vr(n);
    k12(n) = h*vt(n);
    L11(n) = h*(get_DVR(ue,r(n),vt(n),m,D(n),fpa(n),L(n)));
    L12(n) = h*(get_DVT(vr(n),vt(n),r(n),m,D(n),fpa(n),L(n)));
    
    k21(n) = h*(vr(n)+((L11(n))/2));
    k22(n) = h*(vt(n)+((L12(n))/2));
    L21(n) = h*(get_DVR(ue,r(n),vt(n)+((L12(n))/2),m,D(n),fpa(n),L(n)));
    L22(n) =h*(get_DVT(vr(n)+((L11(n))/2),vt(n)+((L12(n))/2),r(n),m,D(n),fpa(n),L(n)));
    
    k31(n) = h*(vr(n)+(L21(n)/2));
    k32(n) = h*(vt(n)+(L22(n)/2));
    L31(n) = h*(get_DVR(ue,r(n),vt(n)+((L22(n))/2),m,D(n),fpa(n),L(n)));
    L32(n) = h*(get_DVT(vr(n)+((L21(n))/2),vt(n)+((L22(n))/2),r(n),m,D(n),fpa(n),L(n)));
    
    k41(n) = h*(vr(n)+L31(n));
    k42(n) = h*(vt(n)+L32(n));
    L41(n) = h*(get_DVR(ue,r(n),vt(n)+L32(n),m,D(n),fpa(n),L(n)));
    L42(n) = h*(get_DVT(vr(n)+L31(n),vt(n)+L32(n),r(n),m,D(n),fpa(n),L(n)));
    
    
    dvr(n+1) = dvr(n) + ((1/6)*(L11(n)+2*(L21(n))+2*(L31(n))+L41(n)));
    dvt(n+1) = dvt(n) + ((1/6)*(L12(n)+2*(L22(n))+2*(L32(n))+L42(n)));
    vr(n+1) = vr(n) + dvr(n);
    vt(n+1) = vt(n) + dvt(n);
    
     
    else break
    end
    
end
tfrunge = t(n-1) + (re - r(n-1))*((t(n)-t(n-1))/(r(n)-r(n-1))) %finaltime


    
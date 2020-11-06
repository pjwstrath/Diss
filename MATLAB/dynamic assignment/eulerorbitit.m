

h=(b-a)/N;


%constants




for n = 1:N
    if r(n)> re;
    t(n+1) = t(n)+h;
    
 
    
    r(n+1) = r(n) + vr(n);
    alt(n+1) = r(n)-re;
    theta(n+1) = theta(n)+h*(vt(n)/r(n));
    pe(n+1) = m*(ue/r(n))*alt(n);
    ke(n+1) = 0.5*m*(V(n))^2;
    Q(n+1) = get_Q(Rn,V(n),alt(n));
    
    vr(n+1) =  vr(n) + h*dvr(n);
    
    vt(n+1) = vt(n) + h*dvt(n);
    V(n+1) = (vt(n)^2 + (vr(n)^2))^(1/2);
    fpa (n+1) = atan((vr(n)/vt(n)));
    
  
    cl(n+1) = get_cl(alt(n),V(n),aoa);
    cd(n+1) = get_cd(alt(n),V(n),aoa);
    L(n+1) = get_L(s,V(n),cl(n),alt(n));
    D(n+1) = get_D(s,V(n),cd(n),alt(n));
    
    dvr(n+1)= get_DVR(ue,r(n),vt(n),m,D(n),fpa(n),L(n));
    dvt(n+1)= get_DVT(vr(n),vt(n),r(n),m,D(n),fpa(n),L(n));
    else break
    end
    
    
end
tfeuler = t(n-1) + (re - r(n-1))*((t(n)-t(n-1))/(r(n)-r(n-1))) %finaltime





   

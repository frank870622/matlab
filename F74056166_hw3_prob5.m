r = 1.5*10^11;
M = 2*10^30;                        %mass of sun
m = 6*10^24;                        %mass fo earth
v = 2.9822*10^4;                    %speed
T = 2*pi*r/v;                       %period
G = 6.67*10^-11;                    %Gravitational constant



ax0 = 0;
ay0 = 0;
vx0 = 0;
vy0 = 2.9822*10^4;
x0 = 1.5*10^11;
y0 = 0;
figure
hold on
for i = 1:10000
    ax = -G*M*x0/((x0^2)+(y0^2))^(3/2);                                         %a = F/m
    ay = -G*M*y0/((x0^2)+(y0^2))^(3/2);                                         %F = GMm/r^2
    vx = vx0 + ax0*(T/365);                                                     %v = v0 + at
    vy = vy0 + ay0*(T/365);                                                     %x = x0 + vt + 1/2*a*t^2
    x = x0 + vx0*(T/365) + 1/2*ax0*((T/365)^2);
    y = y0 + vy0*(T/365) + 1/2*ay0*((T/365)^2);
    ax0 = ax;
    ay0 = ay;
    vx0 = vx;
    vy0 = vy;
    x0 = x;
    y0 = y;
    plot(x,y,'b.');
end
hold off
title('Prob5(c1)');
xlabel('x');
ylabel('y');


ax0 = 0;
ay0 = 0;
vx0 = 0;
vy0 = 2.9822*10^4;
x0 = 1.5*10^11;
y0 = 0;
figure
hold on
for i = 1:10000
    ax = -G*M*x0/((x0^2)+(y0^2))^(3/2);                                 
    ay = -G*M*y0/((x0^2)+(y0^2))^(3/2);
    vx = vx0 + ax0*(T/365);
    vy = vy0 + ay0*(T/365);
    x = x0 + vx0*(T/365) + 1/2*ax0*((T/365)^2);
    y = y0 + vy0*(T/365) + 1/2*ay0*((T/365)^2);
    ax0 = ax;
    ay0 = ay;
    vx0 = vx;
    vy0 = vy;
    x0 = x;
    y0 = y;
    plot(x,i,'b.');
end
hold off
title('Prob5(c2)');
xlabel('x');
ylabel('t(day)');

ax0 = 0;
ay0 = 0;
vx0 = 0;
vy0 = 2.9822*10^4;
x0 = 1.5*10^11;
y0 = 0;
figure
hold on
for i = 1:10000
    ax = -G*M*x0/((x0^2)+(y0^2))^(3/2);
    ay = -G*M*y0/((x0^2)+(y0^2))^(3/2);
    vx = vx0 + ax0*(T/365);
    vy = vy0 + ay0*(T/365);
    x = x0 + vx0*(T/365) + 1/2*ax0*((T/365)^2);
    y = y0 + vy0*(T/365) + 1/2*ay0*((T/365)^2);
    ax0 = ax;
    ay0 = ay;
    vx0 = vx;
    vy0 = vy;
    x0 = x;
    y0 = y;
    plot(y,i,'b.');
end
hold off
title('Prob5(c3)');
xlabel('y');
ylabel('t(day)');

%(d)


ax0 = 0;
ay0 = 0;
vx0 = 0;
vy0 = 0.7*2.9822*10^4;
x0 = 1.5*10^11;
y0 = 0;
T = 2*pi*r/vy0;  
figure
hold on
for i = 1:2000
    ax = -G*M*x0/((x0^2)+(y0^2))^(3/2);
    ay = -G*M*y0/((x0^2)+(y0^2))^(3/2);
    vx = vx0 + ax0*(T/365);
    vy = vy0 + ay0*(T/365);
    x = x0 + vx0*(T/365) + 1/2*ax0*((T/365)^2);
    y = y0 + vy0*(T/365) + 1/2*ay0*((T/365)^2);
    ax0 = ax;
    ay0 = ay;
    vx0 = vx;
    vy0 = vy;
    x0 = x;
    y0 = y;
    plot(x,y,'b.');
end
hold off
title('Prob5(d1)');
xlabel('x');
ylabel('y');


ax0 = 0;
ay0 = 0;
vx0 = 0;
vy0 = 0.7*2.9822*10^4;
x0 = 1.5*10^11;
y0 = 0;
figure
hold on
for i = 1:2000
    ax = -G*M*x0/((x0^2)+(y0^2))^(3/2);
    ay = -G*M*y0/((x0^2)+(y0^2))^(3/2);
    vx = vx0 + ax0*(T/365);
    vy = vy0 + ay0*(T/365);
    x = x0 + vx0*(T/365) + 1/2*ax0*((T/365)^2);
    y = y0 + vy0*(T/365) + 1/2*ay0*((T/365)^2);
    ax0 = ax;
    ay0 = ay;
    vx0 = vx;
    vy0 = vy;
    x0 = x;
    y0 = y;
    plot(x,i,'b.');
end
hold off
title('Prob5(d2)');
xlabel('x');
ylabel('t(day)');

ax0 = 0;
ay0 = 0;
vx0 = 0;
vy0 = 0.7*2.9822*10^4;
x0 = 1.5*10^11;
y0 = 0;
figure
hold on
for i = 1:2000
    ax = -G*M*x0/((x0^2)+(y0^2))^(3/2);
    ay = -G*M*y0/((x0^2)+(y0^2))^(3/2);
    vx = vx0 + ax0*(T/365);
    vy = vy0 + ay0*(T/365);
    x = x0 + vx0*(T/365) + 1/2*ax0*((T/365)^2);
    y = y0 + vy0*(T/365) + 1/2*ay0*((T/365)^2);
    ax0 = ax;
    ay0 = ay;
    vx0 = vx;
    vy0 = vy;
    x0 = x;
    y0 = y;
    plot(y,i,'b.');
end
hold off
title('Prob5(d3)');
xlabel('y');
ylabel('t');

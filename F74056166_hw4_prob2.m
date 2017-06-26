e = 1.66*410^-21;
a = 3.4*10^-10;
xmax = 2*10^-9;
xmin = -2*10^-9;
ymax = 2*10^-9;
ymin = -2*10^-9;
m = 40*1.660539*10^-27;
x1 = 2.5*10^-10;
x2 = -2.5*10^-10;
v1 = 0;
v2 = 0;
y1 = 0;
y2 = 0;
h = 10^8;

%(a)
figure
hold on
for t = 0:h:10^11
    r = abs(x1-x2);
    a1 = 4*e*(12*(a^12)/(r^13) - 6*(a^6)/r^7)*r/m*(x2-x1)/r;
    a2 = 4*e*(12*(a^12)/(r^13) - 6*(a^6)/r^7)*r/m*(x1-x2)/r;
    v1 = v1 + a1*h;
    v2 = v2 + a2*h;
    X1 = x1 + v1*h;
    X2 = x2 + v2*h;
    x1 = X1;
    x2 = X2;
    if (x1 > xmax) || (x1 < xmin)
        v1 = -v1;
    end
    if (x2 > xmax) || (x2 < xmin)
        v2 = -v2;
    end
    total = 0.5*m*v1*v1 + 0.5*m*v2*v2;
    plot(t,total,'k.');
end
hold off
title('Prob2(a)');
xlabel('t');
ylabel('total energy');


%(b)
x1 = -2*10^-9;
x2 = 0;
x3 = 0;
y1 = 0;
y2 = 1.9082*10^-10;
y3 = -1.9082*10^-10;
v1x = 300;
v1y = 0;
v2x = 0;
v2y = 0;
v3x = 0;
v3y = 0;
h = 10^6;
figure
hold on
for t = 0:h:10^9
    r12 = sqrt((x1-x2)^2 + (y1-y2)^2);
    r13 = sqrt((x1-x3)^2 + (y1-y3)^2);
    r23 = sqrt((x2-x3)^2 + (y2-y3)^2);
    a1x = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(x2-x1)/r12 + 4*e*(12*(a^12)/(r13^13) - 6*(a^6)/r13^7)*r13/m*(x3-x1)/r13;
    a1y = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(y2-y1)/r12 + 4*e*(12*(a^12)/(r13^13) - 6*(a^6)/r13^7)*r13/m*(y3-y1)/r13;
    a2x = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(x1-x2)/r12 + 4*e*(12*(a^12)/(r23^13) - 6*(a^6)/r23^7)*r23/m*(x3-x2)/r23;
    a2y = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(y1-y2)/r12 + 4*e*(12*(a^12)/(r23^13) - 6*(a^6)/r23^7)*r23/m*(y3-y2)/r23;
    a3x = 4*e*(12*(a^12)/(r13^13) - 6*(a^6)/r13^7)*r13/m*(x1-x3)/r13 + 4*e*(12*(a^12)/(r23^13) - 6*(a^6)/r23^7)*r23/m*(x2-x3)/r23;
    a3y = 4*e*(12*(a^12)/(r13^13) - 6*(a^6)/r13^7)*r13/m*(y1-y3)/r13 + 4*e*(12*(a^12)/(r23^13) - 6*(a^6)/r23^7)*r23/m*(y2-y3)/r23;
    v1x = v1x + a1x*h;
    v1y = v1y + a1y*h;
    v2x = v2x + a2x*h;
    v2y = v2y + a2y*h;
    v3x = v3x + a3x*h;
    v3y = v3y + a3y*h;
    X1 = x1 + v1x*h;
    Y1 = y1 + v1y*h;
    X2 = x2 + v2x*h;
    Y2 = y2 + v2y*h;
    X3 = x3 + v3x*h;
    Y3 = y3 + v3y*h;
    x1 = X1;
    y1 = Y1;
    x2 = X2;
    y2 = Y2;
    x3 = X3;
    y3 = Y3;
    if(x1 < xmin) || (x1 > xmax)
        v1x = -v1x;
    end
    if(y1 < ymin) || (y1 > ymax)
        v1y = -v1y;
    end
    if(x2 < xmin) || (x2 > xmax)
        v2x = -v2x;
    end
    if(y2 < ymin) || (y2 > ymax)
        v2y = -v2y;
    end
    if(x3 < xmin) || (x3 > xmax)
        v3x = -v3x;
    end
    if(y3 < ymin) || (y3 > ymax)
        v3y = -v3y;
    end
    total = 0.5*m*v1x*v1x + 0.5*m*v2x*v2x + 0.5*m*v3x*v3x + 0.5*m*v1y*v1y + 0.5*m*v2y*v2y + 0.5*m*v3y*v3y;
    plot(t,total,'k.');
end
hold off
title('Prob2(b)');
xlabel('t');
ylabel('total energy');

%(c)
x1 = 2.5*10^-10;
x2 = -2.5*10^-10;
y1 = 0;
y2 = 0;
v1x = -15.8;
v1y = 7.9;
v2x = 15.8;
v2y = 0;
h = 10^-11;

figure
hold on
for t = 0:h:10^-8
    r12 = sqrt((x1-x2)^2 + (y1-y2)^2);
    a1x = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(x2-x1)/r12;
    a1y = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(y2-y1)/r12;
    a2x = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(x1-x2)/r12;
    a2y = 4*e*(12*(a^12)/(r12^13) - 6*(a^6)/r12^7)*r12/m*(y1-y2)/r12;
    v1x = v1x + a1x*h;
    v1y = v1y + a1y*h;
    v2x = v2x + a2x*h;
    v2y = v2y + a2y*h;
    X1 = x1 + v1x*h;
    Y1 = y1 + v1y*h;
    X2 = x2 + v2x*h;
    Y2 = y2 + v2y*h;
    x1 = X1;
    y1 = Y1;
    x2 = X2;
    y2 = Y2;
    if(x1 < xmin) || (x1 > xmax)
        v1x = -v1x;
    end
    if(y1 < ymin) || (y1 > ymax)
        v1y = -v1y;
    end
    if(x2 < xmin) || (x2 > xmax)
        v2x = -v2x;
    end
    if(y2 < ymin) || (y2 > ymax)
        v2y = -v2y;
    end
    total = 0.5*m*v1x*v1x + 0.5*m*v2x*v2x + 0.5*m*v1y*v1y + 0.5*m*v2y*v2y;
    plot(t,total,'k.');
end
title('Prob2(c)');
xlabel('t');
ylabel('total energy');

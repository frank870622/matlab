fprintf('�`(t) - RCdv(t)/dt - Vc(t) = 0 \n');
v0 = 0;
t0 = 0;
C = 10^-4;                          %capacitance
R = 10000;                          %resistence
figure
hold on
for t = 0:0.001:5
e = 5*sin(20*pi*t);                 %vecter
v = v0 + (((e/(C*R))-(v0/(C*R)))*(t-t0)) + ((-(e/((C*R)^2)) + (v0/((C*R)^2)))*((t-t0)^2)/2);
t0 = t;
v0 = v;
plot(t,v,'b.');
end
hold off
title('Prob3(2)');
xlabel('t');
ylabel('Vc(t)');

v0 = 0;
t0 = 0;
C = 10^-4;
R = 10000;
figure
hold on
for t = 0:0.00001:0.05
if rem(t*1000,20) < 10               %when t%20 < 10   e = 5
    e = 5;
else
    e = -5;                         %when t%20 > 10   e = -5
end
v = v0 + (((e/(C*R))-(v0/(C*R)))*(t-t0)) + ((-(e/((C*R)^2)) + (v0/((C*R)^2)))*((t-t0)^2)/2);
%v = v0 + (((e)-(v0))*(t-t0)) + ((-(e) + (v0))*((t-t0)^2)/2);
t0 = t;
v0 = v;
plot(t,v,'b.');
end
hold off
title('Prob3(3)');
xlabel('t(s)');
ylabel('Vc(t)');




v0 = 0;
t0 = 0;
C = 10^-6;
R = 100;
e = 0;
figure
hold on
for t = 0:0.00001:0.06
if rem(t*1000+10,40) <= 20
    e = e + 5*10^-3;
    v = v0 + (((e/(C*R))-(v0/(C*R)))*(t-t0)) + (((-(e/((C*R)^2)) + (v0/((C*R)^2)) + (5*10^-3)/R/C))*((t-t0)^2)/2);              %(5*10^-3)/R/C) -> de(t)/dt
else                                                                                                                            % ((e/(C*R))-(v0/(C*R)))*(t-t0)) -> dv
    e = e - 5*10^-3;                                                                                                            %(((-(e/((C*R)^2)) + (v0/((C*R)^2)) + (5*10^-3)/R/C))*((t-t0)^2)/2 -> ddv(t)/2!
    v = v0 + (((e/(C*R))-(v0/(C*R)))*(t-t0)) + ((-(e/((C*R)^2)) + (v0/((C*R)^2)) - ((5*10^-3)/R/C))*((t-t0)^2)/2);
    
end
%v = v0 + (((e/(C*R))-(v0/(C*R)))*(t-t0)) + ((-(e/((C*R)^2)) + (v0/((C*R)^2)))*((t-t0)^2)/2);
vr = e-v;                                                                                                                       %vr = Vs - Vc
t0 = t;
v0 = v;
plot(t,vr,'b.');
end
hold off
title('Prob3(4)');
xlabel('t');
ylabel('Vc(t)');
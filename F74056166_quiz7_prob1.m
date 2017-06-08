V = 5;
C = 20*(10^-6);
R = 50*10^3;
t0 = 0;
v0 = 0.5;
figure
hold on
for t = 0:0.001:5
    y = v0 + (((V/(C*R))-(v0/(C*R)))*(t-t0)) + ((-(V/((C*R)^2)) + (v0/((C*R)^2)))*((t-t0)^2)/2);
    v0 = y;
    t0 = t;
    if t == 0.5
        second = y;
    end
    plot(t,y);
end
hold off
title('prob1');
xlabel('t');
ylabel('Vc(t)');
fprintf('(1)I use Euler Method \n');
fprintf('(2) Vc = %.3f \n h = 0.001s \n',second);

t0 = 0;
v0 = 0.5;
for t = 0:0.001:5
    y = v0 + (((V/(C*R))-(v0/(C*R)))*(t-t0)) + ((-(V/((C*R)^2)) + (v0/((C*R)^2)))*((t-t0)^2)/2);
    v0 = y;
    t0 = t;
    if y >= 3.5
        third = t;
        break;
    end
end
fprintf('(3) it take %.3fs to reach 3.5V \n',third);
x0 = 0.1;
v0 = 0;
t0 = 0;
m = 1.2*10^3;                                   %kg
b = 4*10^3;                                     %resistance
k = 58*10^3;                                    %constant factor of the spring
a0 = (-m*9.8 - k*10)/m;
figure
hold on
for t = 0:0.001:5
    a = (-9.8*m - b*v0 - k*x0)/m;               %change a of the block
    v = v0 + a*(t-t0);                          %change v of the block
    x = x0 + v0*(t-t0) + 1/2*a0*((t-t0)^2);     %change x of the block
    a0 = a;
    v0 = v;
    x0 = x;
    t0 = t;
    plot(t,x0,'.');
end
hold off
title('Prob2');
xlabel('t');
ylabel('x');
fprintf('oscillation frequency = 1.073 Hz\n');
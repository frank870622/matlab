y0 = 1.5;
v0 = 20;
t0 = 0;
figure
hold on
for t = 0:0.001:3
    v =	v0 - 9.8*(t-t0);
    y = y0 + v*(t-t0) - 9.8/2*((t-t0)^2);
    y0 = y;
    v0 = v;
    t0 = t;
    plot(t,y);
end
hold off
title('Prob2');
xlabel('t');
ylabel('Y');
fprintf('y(3) = %.3f m \n',y0);
fprintf('y`(3) = %.3f m/s \n',v0);
fprintf('h = 0.001s\n');

a = 0.5;
b = 0.001;
c = 0.4;
al = 0.02;
v = 0.004;
t0 = 0;

r0 = 100;
w0 = 0;
figure
hold on
for t = 0:0.01:100
    r = r0 + (a*r0 - b*r0*r0 -al*r0*w0)*(t-t0);
    w = w0 + (-c*w0 + v*r0*w0)*(t-t0);
    if r < 1
        r = 0;
    end
    if w < 1
        w = 0;
    end
    r0 = r;
    w0 = w;
    t0 = t;
    plot(t,r,'r');
    plot(t,w,'b');
end
hold off
title('Prob3 (a)');
xlabel('time');
ylabel('number');
legend('rabbit','wolf');

t0 = 0;
r0 = 0;
w0 = 100;
figure
hold on
for t = 0:0.01:100
    r = r0 + (a*r0 - b*r0*r0 -al*r0*w0)*(t-t0);
    w = w0 + (-c*w0 + v*r0*w0)*(t-t0);
    if r < 1
        r = 0;
    end
    if w < 1
        w = 0;
    end
    r0 = r;
    w0 = w;
    t0 = t;
    plot(t,r,'r');
    plot(t,w,'b');
end
hold off
title('Prob3 (b)');
xlabel('time');
ylabel('number');
legend('rabbit','wolf');

t0 = 0;
r0 = 100;
w0 = 6;
figure
hold on
for t = 0:0.01:100
    r = r0 + (a*r0 - b*r0*r0 -al*r0*w0)*(t-t0);
    w = w0 + (-c*w0 + v*r0*w0)*(t-t0);
    if r < 1
        r = 0;
    end
    if w < 1
        w = 0;
    end
    r0 = r;
    w0 = w;
    t0 = t;
    plot(t,r,'r');
    plot(t,w,'b');
end
hold off
title('Prob3 (c)');
xlabel('time');
ylabel('number');
legend('rabbit','wolf');

t0 = 0;
r0 = 100;
w0 = 600;
figure
hold on
for t = 0:0.01:100
    r = r0 + (a*r0 - b*r0*r0 -al*r0*w0)*(t-t0);
    w = w0 + (-c*w0 + v*r0*w0)*(t-t0);
    if r < 1
        r = 0;
    end
    if w < 1
        w = 0;
    end
    r0 = r;
    w0 = w;
    t0 = t;
    plot(t,r,'r');
    plot(t,w,'b');
end
hold off
title('Prob3 (d)');
xlabel('time');
ylabel('number');
legend('rabbit','wolf');
vx = 20*cos(pi/18*5);       %cos(50)
vy = 20*sin(pi/18*5);       %sin(50)
ax = 0;
ay = -9.8;                  %g
m = 0.1;
x0 = 0;
y0 = 0;
h = 0.0001;


%(a)
figure 
hold on 
for t = 0:h:4
    vy = vy + ay*h;         %vy change by the g(-9.8)
    x = x0 + vx*h;          %vx is no change
    y = y0 + vy*h;
    x0 = x;
    y0 = y;
    if y < 0                %when landed -> break
        break;
    end
    plot(x0,y0,'b.');
end
v = sqrt(vx*vx + vy*vy);
k = 0.5*3*m*v*v;
hold off
xlabel('x');
ylabel('y');
title('Prob1(a)');

%(b)
vx = 20*cos(pi/18*5); 
vy = 20*sin(pi/18*5);
x0 = 0;
y0 = 0;

for t = 0:h:4
    if t == 2                   %F = ma;    a = 20; s = 0.1
        vx = vx + 2;            %vx = vx + 20*0.1;
    end
    vy = vy + ay*h;
    x = x0 + vx*h;
    y = y0 + vy*h;
    x0 = x;
    y0 = y;
    if y < 0
        break;
    end
end
v = sqrt(vx*vx + vy*vy);        % v  = sqrt(vx^2 + vy^2);
k1 = 0.5*m*v*v;                 % k = 0.5*m*v^2
fprintf('(b)\n x = %.5fm \n',x);


%(c)

vx = 20*cos(pi/18*5); 
vy = 20*sin(pi/18*5);
x0 = 0;
y0 = 0;

for t = 0:h:4
    if t == 2                   %F = ma;    a = 100; s = 0.1
        vx = vx - 1;            %vx = vx - 10*0.1;
    end
    vy = vy + ay*h;
    x = x0 + vx*h;
    y = y0 + vy*h;
    x0 = x;
    y0 = y;
    if y < 0
        break;
    end
end
v = sqrt(vx*vx + vy*vy);
k2 = 0.5*m*v*v;
fprintf('(c)\n v = %.5fm \n',v);


%(d)
vx = 20*cos(pi/18*5); 
vy = 20*sin(pi/18*5);
x0 = 0;
y0 = 0;

for t = 0:h:4                   %F = ma;    a = 100; s = 0.1
    if t == 2                   %vx = vx - 10*0.1;
        vx = vx - 1;
    end
    vy = vy + ay*h;
    x = x0 + vx*h;
    y = y0 + vy*h;
    x0 = x;
    y0 = y;
    if y < 0
        break;
    end
end
v = sqrt(vx*vx + vy*vy);
k3 = 0.5*m*v*v;

fprintf('(d)\n mass of center: %.5f j \n Jim: %.5f j\n Jake %.5f j\n Jay: %.5f j\n ',k,k1,k2,k3);


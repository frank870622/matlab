r = 1.5*10^11;
M = 2*10^30;                        %mass of sun
m = 6*10^24;                        %mass fo earth
v = 2.9822*10^4;                    %speed
T = 2*pi*r/v;                       %period
G = 6.67*10^-11;                    %Gravitational constant
figure
hold on
for i = 0:364
    x = r*cos(v*(T*i/365)/r);       %x position
    y = r*sin(v*(T*i/365)/r);       %y position
    plot(x,y,'b.');
end
hold off
title('Prob5(1c)');
xlabel('x');
ylabel('y');

figure
hold on
for i = 1:365
    x = r*cos(v*(T*i/365)/r);       %x position
    y = r*sin(v*(T*i/365)/r);       %y position
    plot(x,i,'b.');
end
hold off
title('Prob5(2c)');
xlabel('x');
ylabel('day');

figure
hold on
for i = 1:365
    x = r*cos(v*(T*i/365)/r);       %x position
    y = r*sin(v*(T*i/365)/r);       %y position
    plot(y,i,'b.');
end
hold off
title('Prob5(3c)');
xlabel('y');
ylabel('day');

%(d)
v = 0.7*2.9822*10^4;
r = G*M/v/v;
% = 2*pi*r/v;

figure
hold on
for i = 1:365*2 
    x = r*cos(v*(T*i/365)/r);
    y = r*sin(v*(T*i/365)/r);
    plot(x,y,'b.');
end
hold off
title('Prob5(1d)');
xlabel('x');
ylabel('y');

figure
hold on
for i = 1:365
    x = r*cos(v*(T*i/365)/r);
    y = r*sin(v*(T*i/365)/r);
    plot(x,i,'b.');
end
hold off
title('Prob5(2d)');
xlabel('x');
ylabel('day');

figure
hold on
for i = 1:365
    x = r*cos(v*(T*i/365)/r);
    y = r*sin(v*(T*i/365)/r);
    plot(y,i,'b.');
end
hold off
title('Prob5(3d)');
xlabel('y');
ylabel('day');
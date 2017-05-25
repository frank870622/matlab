x = -10:10;
y = x + 3.*cos(x);
plot(x,y);
grid on
a = -1;
b = 0;
x(1) = a + 3*cos(a);
x(2) = 1 - 3*sin(a);
k = 0;
while abs(b-a)/abs(b) > 10^-7
    b = a;
    a = a - x(1)/x(2);
    x(1) = a + 3*cos(a);
    x(2) = 1 - 3*sin(a);
    k = k+1;
end

fprintf('The P2-1 ans:%.8f \n',a);
fprintf('run %d times \n \n',k);


a = 2.4;
b = 2.8;
k = 0;
while abs(b-a)/abs(b) > 10^-9
    c = b - (b+3*cos(b))*(b-a)/((b+3*cos(b))-(a+3*cos(a)));
    a = b;
    b = c;
    k = k+1;
end
fprintf('The P2-2 ans:%.9f \n',a);
fprintf('run %d times \n \n',k);

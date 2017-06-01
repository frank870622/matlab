a = [pi -exp(1) sqrt(2) -sqrt(3) sqrt(11); pi*pi exp(1) -exp(2) 3/7 0; sqrt(5) -sqrt(6) 1 -sqrt(2) pi; pi*pi*pi exp(2) -sqrt(7) 1/9 sqrt(2)];
for i = 2:4
    k = 1/a(1,1)*(-a(i,1));
    a(i,:) = a(i,:) + k*a(1,:);
end
for i = 3:4
    k = 1/a(2,2)*(-a(i,2));
    a(i,:) = a(i,:) + k*a(2,:);
end
for i = 4:4
    k = 1/a(3,3)*(-a(i,3));
    a(i,:) = a(i,:) + k*a(3,:);
end
x4 = a(4,5)/a(4,4);
x3 = (a(3,5)-a(3,4)*x4)/a(3,3);
x2 = (a(2,5) - a(2,4)*x4 - a(2,3)*x3)/a(2,2);
x1 = (a(1,5) - a(1,4)*x4 - a(1,3)*x3 - a(1,2)*x2)/a(1,1);
fprintf('x1 = %.08f\n',x1);
fprintf('x2 = %.08f\n',x2);
fprintf('x3 = %.08f\n',x3);
fprintf('x4 = %.08f\n',x4);
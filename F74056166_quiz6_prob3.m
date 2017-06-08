a = [1 -1 0 0 1; -3 5 -1 -1 0; 0 -1 8 -1 0; 0 -1 -1 11 0];
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
i4 = a(4,5)/a(4,4);
i3 = (a(3,5)-a(3,4)*i4)/a(3,3);
i2 = (a(2,5) - a(2,4)*i4 - a(2,3)*i3)/a(2,2);
i1 = (a(1,5) - a(1,4)*i4 - a(1,3)*i3 - a(1,2)*i2)/a(1,1);
fprintf('I = %.08f\n',i1);
R = 30/i1;
fprintf('R %.08f\n',R);

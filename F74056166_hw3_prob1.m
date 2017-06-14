
a = [6 -4 -2 5; -2 9 -4 0; -1 -4 6 0];
%pivot(1,1)
%use Gauss elimination
for i = 2:3
    k = 1/a(1,1)*(-a(i,1));
    a(i,:) = a(i,:) + k*a(1,:);
end
%pivot(2,2) (3,3)
for i = 3:3
    k = 1/a(2,2)*(-a(i,2));
    a(i,:) = a(i,:) + k*a(2,:);
end
%KCL{
I3 = a(3,4) / a(3,3);
I2 = (a(2,4) - a(2,3)*I3)/a(2,2);
I1 = (a(1,4) - a(1,3)*I3 - a(1,2)*I2)/a(1,1);
%}
%I5 = I3-I2
I5 = I3-I2;
fprintf('Use Gauss elimination\n');
fprintf('I5 = %.4f A\n',I5);
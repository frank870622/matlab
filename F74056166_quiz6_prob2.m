x11 = 0;
x22 = 0;
x33 = 0;
x44 = 0;
x1 = (1/4)*(-2 - x22 + x33 - x44);
x2 = (1/4)*(-1 - x11 + x33 + x44);
x3 = (1/5)*(x11 + x22 - x44);
x4 = (1/3)*(1 - x11 + x22 - x33);
count = 1;
while(abs(x11-x1) > 10^-8) || (abs(x22-x2) > 10^-8) || (abs(x33-x3) > 10^-8) || (abs(x44-x4) > 10^-8)
x11 = x1;
x1 = (1/4)*(-2 - x2 + x3 - x4);
x22 = x2;
x2 = (1/4)*(-1 - x1 + x3 + x4);
x33 = x3;
x3 = (1/5)*(x1 + x2 - x4);
x44 = x4;
x4 = (1/3)*(1 - x1 + x2 - x3);
count = count +1;
end
T = [0 -1/2 1/4 -1/4; -1/4 0 1/4 1/4; 1/5 1/5 0 -1/5; -1/3 1/3 -1/3 0];
C = [-1/2; -1/4 ;0; 1/3];
fprintf('x1 = %.8f \n' ,x1);
fprintf('x2 = %.8f \n' ,x2);
fprintf('x3 = %.8f \n' ,x3);
fprintf('x4 = %.8f \n' ,x4);
fprintf('(a) I use Gauss Seidel Method \n(b)x = Tx + C \nT = \n');
disp(T);
fprintf('C = \n');
disp(C);
fprintf('(c) x1:0 x2:0 x3:0 x4:0 \n');
fprintf('(d) 19 iterations,8-digit precision \n')
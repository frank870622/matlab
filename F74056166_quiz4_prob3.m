k = 0;
n = 10000000;
for i = 1:n
    x = (8*rand)-4;
    y = (4*rand)-2;
    if(x*x/16+y*y/4 <= 1)
        k = k+1;
    end
end
a = (k/n)*32;
fprintf('%.9f \n', a);


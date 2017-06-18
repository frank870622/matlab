
figure
g = (pi)^(0.5)/2*erf(2);
for i = 1:0.01:5
    n = 10^(i);
    h = 2/n;
    f2 = 0;
    f3 = 0;
    for j = 0:n
        f2 = f2 + exp(-(j*h)^2); 
    end
    for j = 0:2 :n-2
        f3 = f3 + h*(exp(-((j*h)^2)) + 4*exp(-(((j+1)*h)^2)) + exp(-(((j+2)*h)^2)))/3;
    end
    f2 = (2*f2 - exp(-(0)^2)- exp(-(2)^2))*h/2;
    %loglog(h,f2,'r.'); hold on
    loglog(h,f3,'b.'); hold on
    e = abs(f2-f3);  
    %loglog(h,e,'k.');hold on
end
fprintf('%.9f \n',f2);
fprintf('%.9f \n',f3);
fprintf('%.9f \n',abs(f3-f2));
fprintf('%.9f \n',g);
fprintf('%d \n',h);
hold off
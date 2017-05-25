x = -1:0.01:1;
y = 3.*x.*x - exp(x);
plot(x,y);
grid on

a = -0.6;
b = -0.4;
c(1) = 3.*a.*a - exp(a);
c(2) = 3.*b.*b - exp(b);
k = 0;
while abs(a-b)/abs(a) > 10^-7
    e = (a+b)/2;
    d = 3.*e.*e - exp(e);
    if d * c(1) > 0
        c(1) = d;
        a = e;
    elseif d * c(2) > 0
        c(2) = d;
        b = e;
    end
    k = k+1;
end
fprintf('The P1-1 ans:%.8f \n',e);
fprintf('run %d times \n \n',k);
%k = abs(a-b)/abs(a);
%fprintf('%.8f',k);


a = 0.8;
b = 0;
x(1) = 3*a*a - exp(a);
x(2) = 6*a - exp(a);
k = 0;
while abs(b-a)/abs(b) > 10^-11
    b = a;
    a = a - x(1)/x(2);
    x(1) = 3*a*a - exp(a);
    x(2) = 6*a - exp(a);
    k = k +1;
end
          
fprintf('The P1-2 ans:%.11f \n',a);
fprintf('run %d times \n \n',k);





  
    
    
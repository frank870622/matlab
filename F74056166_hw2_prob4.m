x = -10:0.001:10;
y = 0.5 + 0.25.*x -x.*sin(x) -0.5.*cos(2.*x);
figure
plot(x,y);
title('Prob.4(a)');
grid on

a = 1;
b = 2;
c(1) = 0.5 + 0.25*a -a*sin(a) -0.5*cos(2*a);
c(2) = 0.5 + 0.25*b -b*sin(b) -0.5*cos(2*b);

while abs(a-b)/abs(a) > 10^-9
    e = (a+b)/2;
    d = 0.5 + 0.25*e -e*sin(e) -0.5*cos(2*e);
    if d*c(1) > 0
        c(1) = d;
        a = e;
    elseif d*c(2) > 0
        c(2) = d;
        b = e;
    end
end
fprintf('The smallest positive root of Prob.4(a) is %.9f \n',e);


a = -4;
b = -3;
while abs(b-a)/abs(b) >10^-9
    c = b - (0.5 + 0.25*b -b*sin(b) -0.5*cos(2*b))*(b-a)/((0.5 + 0.25*b -b*sin(b) -0.5*cos(2*b))-(0.5 + 0.25*a -a*sin(a) -0.5*cos(2*a)));
    a = b;
    b = c;
end
fprintf('The largest negative root of Prob.4(a) is  %.9f \n',c);

x = -10:0.00001:10;
y = exp(3.*x) -27.*(x.^6) + 27.*(x.^4).*exp(x) - 9.*(x.^2).*exp(2.*x);
figure
plot(x,y);  
grid on
title('Prob.4(b)');


a = 0.8;
b = 1;
while abs(b-a)/abs(b) >10^-9
    c = b - (exp(3*b) -27*(b^6) + 27*(b^4)*exp(b) - 9*(b^2)*exp(2*b))*(b-a)/((exp(3*b) -27*(b^6) + 27*(b^4)*exp(b) - 9*(b^2)*exp(2*b))-(exp(3*a) -27*(a^6) + 27*(a^4)*exp(a) - 9*(a^2)*exp(2*a)));
    a = b;
    b = c;
end

fprintf('The smallest positive root of Prob.4(b) is %.9f \n',c);


a = -0.7;
b = -0.2;
while abs(b-a)/abs(b) >10^-9
    c = b - (exp(3*b) -27*(b^6) + 27*(b^4)*exp(b) - 9*(b^2)*exp(2*b))*(b-a)/((exp(3*b) -27*(b^6) + 27*(b^4)*exp(b) - 9*(b^2)*exp(2*b))-(exp(3*a) -27*(a^6) + 27*(a^4)*exp(a) - 9*(a^2)*exp(2*a)));
    a = b;
    b = c;
end

fprintf('The largest negative root of Prob.4(b) is %.9f \n',c);
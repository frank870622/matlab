real = sin(pi*0.5)-sin(pi*0.25);
figure

for i = 3:0.5:9
    n = 10^(i);
    h = 0.25/n;
    f = 0;
    f2 = 0;
    for j = 0:n
        f = f + pi*cos(pi*(0.25+j*h))*h;
        f2 = f2 + pi*cos(pi*(0.25+j*h)); 
    end
    f2 = (2*f2 - pi*cos(pi*(0.25))-pi*cos(pi*(0.5)))*h/2;
    e = abs(real-f);
    e2 = abs(real-f2);
    loglog(h,e,'b.');hold on
    loglog(h,e2,'r.');
end
fprintf('    box counting : h = 2.5e-10 \n');
fprintf('    box counting : %.9f \n',f);
fprintf('    Trapezoid : h = 2.5e-5 \n');
fprintf('    Trapezoid : %.9f \n ',f2);
fprintf('    real :%.9f \n',real);
%display(a);
%display(b);
hold off


h = 1/10^4;
E = 0;
for i = 0:10^4-1
    for j = 0:10^4 -1
        E = E + ((9*10^9 * 1)/((-0.5+i*h)^2+(-0.5+j*h)^2 +1))*h*h;
    end
end
E = 6*E;
fprintf('(1) The total flux is %.8f (Volt.m)\n',E);

h = 2/10^4;
E = 0;
for i = 0:10^4-1
    for j = 0:10^4 -1
        E = E + ((9*10^9 * 1)/((-1+i*h)^2+(-1+j*h)^2 + 4))*h*h;
    end
end
E = 6*E;
fprintf('(2) The total flux is %.8f (Volt.m)\n',E);


h = 2/10^4;
E = 0;
E1 = 0;
E2 = 0;
for i = 0:10^4-1
    for j = 0:10^4 -1
        E1 = E1 + ((9*10^9 * 1)/((0.4-(-1+i*h))^2+(0.4-(-1+j*h))^2 + 0.36))*h*h;
    end
end
E1 = 3*E1;
for i = 0:10^4-1
    for j = 0:10^4 -1
        E2 = E2 + ((9*10^9 * 1)/((0.4-(-1+i*h))^2+(0.4-(-1+j*h))^2 + 2.56))*h*h;
    end
end
E2 = E2*3;
E = E1+E2;
fprintf('(2) The total flux is %.8f (Volt.m)\n',E);

h = 2/10^4;
E = 0;
E1 = 0;
E2 = 0;
for i = 0:10^4-1
    for j = 0:10^4 -1
        E1 = E1 + ((9*10^9 * 1)/((2-(-1+i*h))^2+(2-(-1+j*h))^2 + 1))*h*h;
    end
end
E1 = 3*E1;
for i = 0:10^4-1
    for j = 0:10^4 -1
        E2 = E2 + ((9*10^9 * 1)/((2-(-1+i*h))^2+(2-(-1+j*h))^2 + 9))*h*h;
    end
end
E2 = E2*3;
E = E1+E2;
fprintf('(2) The total flux is %.8f (Volt.m)\n',E);



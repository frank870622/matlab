% use Riemann to Integration

%1-1
h = pi/10^7; %區間
y = 0;  %answer
for i = 0:10^7-1
y = y + (1/sqrt(1+2*sin(i*h)))*h;
end
fprintf('(i)%.8f \n',y);

%1-2
h = 1/10^9; %區間
y = 0;  %answer
for i = 0:10^9-1
    y = y + (sin(50*i*h)/(1+(i*h)^2))*h;
end
fprintf('(ii)%.8f \n',y);


h = pi/10^7;
y = 0;
for i = 0:10^7-1
y = y + (1/sqrt(1+2*sin(i*h)))*h;
end
fprintf('PROB1\n (i)%.8f \n',y);

h = 1/10^9;
y = 0;
for i = 0:10^9-1
    y = y + (sin(50*i*h)/(1+(i*h)^2))*h;
end
fprintf('(ii)%.8f \n',y);

%h = 1/10^9;
%y = 0;
%for i = 1:10^9-2
%    y = y + 2*sin(50*i*h)/(1+(i*h)^2);
%end
%y = y + sin(0)/1 + sin(1)/(1+1);
%y = (y*h)/2;
%fprintf('%.10f',y);
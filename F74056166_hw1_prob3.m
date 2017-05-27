t = 0:0.01:10;
V = -20.*(exp(-0.01.*t.*t)).*sin(20.*pi.*t+2*pi/5);
figure
plot(t,V);
xlabel('time(s)');
ylabel('V(m/s)');
title('damped oscillation v-t')

h = 10^(-7);
F1 =-20.*(exp(-0.01.*(t+h).*(t+h))).*sin(20.*pi.*(t+h)+2*pi/5);
F2 = -20.*(exp(-0.01.*t.*t)).*sin(20.*pi.*t+2*pi/5);
F = ((F1-F2)/h)*5;
%F1 = (-0.02.*t).*-20.*(e.^(-0.01.*t.*t)).*sin(20.*pi.*t+2*3.14/5);
%F2 = -20.*(e.^(-0.01.*t.*t)).*cos(20.*pi.*t+2*3.14/5)*20*pi;
%F = F1+F2;
figure
plot(t,F);
xlabel('time(s)');
ylabel('F(N)');
title('damped oscillation f-t')


f1 =-20.*(exp(-0.01.*(8+h).*(8+h))).*sin(20.*pi.*(8+h)+2*pi/5);
f2 = -20.*(exp(-0.01.*8.*8)).*sin(20.*pi.*8+2*pi/5);
%f1 = (-0.02.*8).*-20.*(e.^(-0.01.*8.*8)).*sin(20.*pi.*8+2*3.14/5);
%f2 = -20.*(e.^(-0.01.*8.*8)).*cos(20.*pi.*8+2*3.14/5)*20*pi;
f = (f1-f2)/h*5;
f = sprintf('%.7f',f);
g = sprintf('F(8) = ');
f = [g f];
display(f);
[x,y] = meshgrid(-5:5,-4:4);
u = ((1./(x.*x+y.*y)./sqrt(2)).*x./(x.*x+y.*y).^0.5)./4./pi./8.85.*10^12;
v = ((1./(x.*x+y.*y)./sqrt(2)).*y./(x.*x+y.*y).^0.5)./4./pi./8.85.*10^12;
figure 
hold on
quiver(x,y,u,v);
plot(0,0,'bo');
hold off
title('Electrical Field');

a = -5:0.01:5;
v1 = 9*10^9*1./abs(a+1);
v2 = 9*10^9*-1./abs(a-1);
b = v1+v2;
figure
plot(a,b);
title('V(x)-x');

h = 10^-7;
e1 = (9*10^9*1./abs(a+1+h)-9*10^9*1./abs(a+1-h))./(2*h);
e2 = (9*10^9*-1./abs(a-1+h) -9*10^9*-1./abs(a-1-h))./(2*h);
E1 = 9*10^9*1./((a+1).^2);
E2 = 9*10^9*-1./((a-1).^2);
E = E1+E2;
e = e1+e2;
figure
hold on
plot(a,e);
plot(a,E);
title('E(x)-x');
hold off

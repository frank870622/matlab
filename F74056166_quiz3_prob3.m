x = (-1):0.05:1;
y = sin(2*pi*x);
z = 2*pi*cos(2*pi*x);
a  = (sin(2*pi*(x+0.1)) - sin(2*pi*x))/0.1;
b  = (sin(2*pi*(x+0.01)) - sin(2*pi*x))/0.01;
c  = (sin(2*pi*(x+0.001)) - sin(2*pi*x))/0.001;
d  = (sin(2*pi*(x+0.0001)) - sin(2*pi*x))/0.0001;
figure,semilogy(x,abs(a-z),'b*');
hold on
semilogy(x,abs(b-z),'r*');
semilogy(x,abs(c-z),'c*');
semilogy(x,abs(d-z),'k*');
legend('0.1','0.01','0.001','0.0001');
title('prob3');
xlabel('x');
ylabel('error');
hold off
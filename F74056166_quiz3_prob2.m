x = (-1):0.05:1;
y = 2*pi*cos(2*pi*x);
figure,plot(x,y,'c*');
a  = (sin(2*pi*(x+0.1)) - sin(2*pi*x))/0.1;
b  = (sin(2*pi*(x+0.01)) - sin(2*pi*x))/0.01;
c  = (sin(2*pi*(x+0.001)) - sin(2*pi*x))/0.001;
d  = (sin(2*pi*(x+0.0001)) - sin(2*pi*x))/0.0001;
hold on
plot(x,a,'b+');
plot(x,b,'ko');
plot(x,c,'rX');
plot(x,d,'gs');
legend('basic','0.1','0.01','0.001','0.0001');
title('prob2');
xlabel('x');
ylabel('2\picos(2\pix)');
hold off

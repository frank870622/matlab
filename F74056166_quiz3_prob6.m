x = 1:1:50;
y = 2.^(-x);
z = (exp(1) + exp(-1))/2;
a = (((exp(1) - exp(-1))/2) - ((exp(1-y) - exp(-(1-y)))/2))./y;
figure,loglog(y,abs(a-z),'b*');
title('prob6');
xlabel('2^{(-1)}~2^{(-50)}');
ylabel('error');
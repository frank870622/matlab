a(4,20) = 0;
for i = 1:1:20
    a(1,i) = i*2*pi/10;
    a(2,i) = cos(a(1,i));
    a(3,i) = sin(a(1,i));
    a(4,i) = 1/2^0.5*(a(2,i)+a(3,i));
    disp(a(:,10));
end
x1 = a(1,:);
y1 = a(2,:);
y2 = a(3,:);
y3 = a(4,:);
figure(1);plot(x1,y1,'k');
title('F7456166 quiz1');
xlabel('i*2\pi/10');
figure(2);
hold on
plot(x1,y1,'k');
plot(x1,y2,'b');
plot(x1,y3,'r');
legend('A_2_,_j','A_2_,_j','A_3_,_j');
xlabel('i*2\pi/10');
hold off
title('F7456166 quiz1');
return
%set set sun(0,0)
%L1 = (RMsMe(1-(Me/3(Ms+Me))^(1/3)),0)
%L2 = (RMsMe(1+(Me/3(Ms+Me))^(1/3)),0)
%L3 = (-RMsMe(1+(5*Me)/12(Ms+Me)),0)
RSE = 149600000; %1AU
Ms = 1.98892*10^30; %M of sun
Me = 5.97219*10^24; %M of earth
L1 = RSE*(1-(Me/(3*(Ms+Me)))^(1/3));
L2 = RSE*(1+(Me/(3*(Ms+Me)))^(1/3));
L3 = -RSE*(1+(5*Me)/(12*(Ms+Me)));
%The distance ratio of L1
x = abs(L1/RSE);
fprintf('The distance ratio of L1:%.6f \n',x);
%The distance ratio of L2
x = abs(L2/RSE);
fprintf('The distance ratio of L2:%.6f \n',x);
%The distance ratio of L3
x = abs(L3/RSE);
fprintf('The distance ratio of L3:%.6f \n',x);
%(a)
R = 8;                                                  %resistence
C = 5*10^-6;                                            %capacitance
L = 2*10^-3;                                            %inductance
I0 = 0;                                                 %before on  -> I = 0, V = 0
dI0 = 0;
ddI0 = 0;
h = 0.00001;                                            
figure
hold on
for t = 0:h:0.01
    Vs = cos(6000*t);
    dVs = -6000*sin(6000*t);
    I =  I0 + dI0*h;                                    %I(t) = I(0) + I'(0)*h/1! + I''(0)*h^2/2!
    dI = dI0 + ddI0*h;                                  %dI(t) = dI(0) + dI'(0)*h/1! + dI''(0)*h^2/2!
    ddI = (dVs -R*dI - I/C)/L;                          %dVs  = LddI(t)/dt^2 + RdI(t)/dt + i(t)/C
    I0 = I;
    dI0 = dI;
    ddI0 = ddI;
    Vr = I*R;
    plot(Vs,t,'b.');
    plot(Vr,t,'k.');
end
hold off
xlabel('V');
ylabel('t');
title('Prob4(a)');
legend('Vs','Vr');

%(b)
I0 = 0;
dI0 = 0;
ddI0 = 0;
h = 0.00001;
figure
hold on
for t = 0:h:0.01
    Vs = cos(10000*t);
    dVs = -10000*sin(10000*t);
    I =  I0 + dI0*h;
    dI = dI0 + ddI0*h;
    ddI = (dVs -R*dI - I/C)/L;
    I0 = I;
    dI0 = dI;
    ddI0 = ddI;
    Vr = I*R;
    plot(Vs,t,'b.');
    plot(Vr,t,'k.');
end
hold off
xlabel('V');
ylabel('t');
title('Prob4(b)');
legend('Vs','Vr');

%(c)
I0 = 0;
dI0 = 0;
ddI0 = 0;
h = 0.00001;
figure
hold on
for t = 0:h:0.01
    Vs = cos(20000*t);
    dVs = -20000*sin(20000*t);
    I =  I0 + dI0*h;
    dI = dI0 + ddI0*h;
    ddI = (dVs -R*dI - I/C)/L;
    I0 = I;
    dI0 = dI;
    ddI0 = ddI;
    Vr = I*R;
    plot(Vs,t,'b.');
    plot(Vr,t,'k.');
end
hold off
xlabel('V');
ylabel('t');
title('Prob4(c)');
legend('Vs','Vr');
function [a] = SngBinToNum(x)
a = 1;
point(8) = 0;
for i = 1:8
    point(9-i) = x(i+1);
end
pointnumber = bi2de(point);
count = 0.5;
for i = 1:23
    if x(i+9) == 1
        a = a + count;
    end
    count = count*0.5;
end
pointnumber = pointnumber - 127;
if pointnumber < 0
    pointnumber = -1*pointnumber;
    for i = 1:pointnumber
        a = a*0.5;
    end
elseif pointnumber > 0
    for i = 1:pointnumber
        a = a*2;
    end
end
if x(1) == 1
    a = -1*a;
end
countzero = 0;
for i = 1:32
    if x(i) == 0;
        countzero = countzero + 1;
    end
end
if countzero == 32
    a = 0;
end


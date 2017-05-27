function [a] = NumToSngBin(x)
if x<0
    x = -1 * x;
    ieee(1) = 1;
end
ieee(32) = 0;
base(127) = 0;
if (x<1) && (x>0)
    floatpoint = x;
    for m = 1:127
        floatpoint = floatpoint*2;
        if floatpoint>=1
            floatpoint  = floatpoint -1;
            base(m) = 1;
        elseif floatpoint<1
            base(m) = 0;
        end
    end
    count = 1;
    i = 1;
    while base(i) == 0
        count = count + 1;
        i = i + 1;
    end
    pointnumber = 127-count;
    point = de2bi(pointnumber);
    pointsize = size(point);
    if pointnumber < 2
    pointsize(2) = 1;
    end
    pointsize = pointsize(2);
    for i = 1:pointsize
        ieee(10-i) = point(i);
    end
    for i = 1:23
        ieee(i+9) = base(count+i);
    end
elseif (1 <= x) && (x < 2)
    int = fix(x);
    floatpoint = x - int;
    for m = 1:23
        floatpoint = floatpoint*2;
        if floatpoint>=1
            floatpoint  = floatpoint -1;
            base(m) = 1;
        elseif floatpoint<1
            base(m) = 0;
        end
    end
    for i = 1:7
        ieee(i+2) = 1;
    end
    for i = 1:23
        ieee(i+9) = base(i);
    end
elseif x>=2
    int = fix(x);
    floatpoint = x - int;
    intarray = de2bi(int);
    i = size(intarray);
    i = i(2);
    pointnumber = 127 + i - 1;
    for n = 1:i-1
        base(n) = intarray(i-n);
    end
    for m = i:23
        floatpoint = floatpoint*2;
        if floatpoint>=1
            floatpoint  = floatpoint -1;
            base(m) = 1;
        elseif floatpoint<1
            base(m) = 0;
        end
    end
    point = de2bi(pointnumber);
    for n = 1:8
        ieee(n+1) = point(9-n);
    end
    for n = 1:23
        ieee(n+9) = base(n);
    end
end
a = ieee;
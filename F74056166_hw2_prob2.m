n = 10^7;   %set 10^7 point
cout = 0; %count the number in the area
for i = 0:10^7
    %random
    x = rand()*4 -2;
    y = rand()*2 -1;
    z = rand()*6 -3;
    if (x^2)/4 + (y^2) + (z^2)/9 <=1    %judge the area
        cout = cout +1;
    end
end
k = 48*cout/n;  %answer
fprintf('A total of %d random points are used; the volume of the ellipsoid is %.10f \n',n,k);
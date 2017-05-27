
b = NumToSngBin(0.56);
a = sprintf('%d',b);
c = sprintf('The binary representation of 0.56 is [');
e = sprintf(']\n');
d = [c a e];
k = d;

b = SngBinToNum(b);
c = sprintf('The decimal representation of [');
e = sprintf('] is %f \n',b);
d = [c a e];
k = [k d];

b = NumToSngBin(1.23);
a = sprintf('%d',b);
c = sprintf('The binary representation of 1.23 is [');
e = sprintf(']\n');
d = [c a e];
k = [k d];

b = SngBinToNum(b);
c = sprintf('The decimal representation of [');
e = sprintf('] is %f \n',b);
d = [c a e];
k = [k d];

b = NumToSngBin(72.75);
a = sprintf('%d',b);
c = sprintf('The binary representation of 72.75 is [');
e = sprintf(']\n');
d = [c a e];
k = [k d];

b = SngBinToNum(b);
c = sprintf('The decimal representation of [');
e = sprintf('] is %f \n',b);
d = [c a e];
k = [k d];
display(k);


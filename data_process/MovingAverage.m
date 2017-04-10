function [f4]=MovingAverage(frandom)
a=15;
windowsize=a;
f2=filter(ones(1,(a+1)/2)/a,1,frandom);
f3=filter(ones(1,(a+1)/2)/a,1,fliplr(frandom));
f4=f2+fliplr(f3)-(1/a)*frandom;
end
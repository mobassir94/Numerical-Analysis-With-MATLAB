clear all;
close all;
clc;

x1=1.5;
x2 = 1;
i = 0;

err = 0.01;
while (1)
    fx2 = x2^2 - 3;
    fx1 = x1^2 - 3;
    x3 = x2 -(fx2*((x2 - x1)/(fx2-fx1)));
    %xim1 = x1;
    err = abs(((x3 - x2) / x3)) * 100;
    if(err>0.01)
        x1=x2;
        x2=x3;
    else
        rt = x3;
        err
        break;
    end
   
end
rt

clear all;
close all;
clc;
sprintf('we are getting the root of x^3 - 0.165*x^2+3.993*10^-6')

xi = 0.05;
i = 0;

err = 100;
while (err>0.01)
    fxi = xi^3 - 0.165*(xi^2)+0.0003993;
    fprime_x = 3*(xi^2) - 0.330*xi;
    xi1 = xi - (fxi/fprime_x);
    old = xi;
    xi = xi1;
    err = abs(((xi1 - old) / xi1)) * 100;
    i = i+1;
    
    sprintf('After iteration  %2.0d the delta/error is %3.8f ',i,err)
end
%f(x)=5*x^2+3*x+2
clc;
a=2;
b=3;

%diff=(5*x^3)/3+(3*x^2)/2+2x;
f1=(5*b^3)/3+(3*b^2)/2+2*b;
f2=(5*a^3)/3+(3*a^2)/2+2*a;
Ia=f1-f2

% Simpson 1/3 rule
h=(b-a)/2;
c=(a+b)/2;
fa=5*a^2+3*a+2;
fb=5*b^2+3*b+2;
fc=5*c^2+3*c+2;
i1=h/3*(fa+4*fc+fb)

% Simpson 3/8 rule
h=(b-a)/3;
c=(a+h);
d=a+2*h;
fa=5*a^2+3*a+2;
fb=5*b^2+3*b+2;
fc=5*c^2+3*c+2;
fd=5*d^2+3*d+2;
i2=3*h/8*(fa+3*fc+3*fd+fb)
clc;
%fx = x^2 - 3;
a =1;
b=2;
eabs = 0.00001;

for i = 1:1:100
    
    fb = b^2 - 3;
    fa = a^2 - 3;
    c = (a*fb - b*fa) / (fb - fa);
    fc = c^2-3
    if fa* fc < 0
        error = b - c;
        b = c;
    else
        error = c-a;
        a=c;
    end
    if error <= eabs
        break
    end
end
output = c
clc;
%fx = x^2 - 3;
a =1;
b=2;
eabs = 0.1;
for i = 1:1:100
    c = (a+b)/2;
    fa = a^2 - 3;
    fc = c^2 - 3;
    error = b-a;
    if fa* fc < 0
        b = c;
    else
        a = c;
    end
    
    if error <= eabs
        break
    end
end
output = c
    
    
    
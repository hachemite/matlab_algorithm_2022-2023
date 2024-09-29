

[mama,papa] = bo(1,2,3);
function [z,y] = bo(a,b,c)
delta =  b*b -4*a*c;
if delta >=0
    z = (-b+sqrt(delta))/2*a;
    y = (-b-sqrt(delta))/2*a;
else
    z =(-b + 1i*sqrt(-delta))/2*a;
    y =(-b - 1i*sqrt(-delta))/2*a;
end
end
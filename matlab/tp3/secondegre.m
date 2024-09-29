function [x,y] = secondegre(a,b,c)
delta = b^2-4*(a*c);
if delta >= 0
    x = (-b+sqrt(delta))/2*a;
    y = (-b-sqrt(delta))/2*a;
else
    x = (-b+1i*sqrt(-delta))/2*a;
    y = (-b+1i*sqrt(-delta))/2*a;



end

disp("la 1er solution de");
disp(x);
disp("la 2er solution de");
disp(y);

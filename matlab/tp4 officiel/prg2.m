x= input("give me: ");

if x <= -1
   y = cos(x*2) + x^5;
elseif x > -1 && x <1
   y = 3/(x+3*pi);
else
   y = sqrt(x+exp(x));
end
disp("the y is :");
disp(y)
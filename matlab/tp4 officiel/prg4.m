a =  randn;
v = rand(3);
q= v > a;
disp(q);
for i=1:3
    for j=1:3
        if q(i,j) == 1
           fprintf('number of index (%d,%d) is bigger than a and  the value of the number is %d \n ',i,j,v(i,j));
        end
    end
end
if q == zeros(3)
    disp("aucune valeur est grand que a")
 end
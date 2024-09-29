vec = input("entrer votre matrice carr");
[lgn,cl] = size(vec);
if lgn == cl 
    disp("that good is a carré matrice");
    if det(vec) ~= 0  
        disp(inv(vec));
    end
else 
    disp("isn't carré");
end


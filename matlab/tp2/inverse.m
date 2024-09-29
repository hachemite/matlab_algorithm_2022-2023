function [inver] = inverse(vec)
[lgn,cl] = size(vec);
if lgn == cl 
    disp("that good is a carré matrice");
    if det(vec) ~= 0 
        inver = inv(vec);
        disp(inv(vec));
    end
else 
    disp("isn't carré");

end
end

function R = poly_mult(P,Q)
sp = size(P);
sq = size(Q);
sr = sq(2)+sp(2)-1;
R = zeros(1,sr-1);
for x = 1:sp(2)
    for y = 1:sq(2)
        R(1,x+y-1) = R(1,x+y)+(P(1,x)*Q(1,y));

    end
end

end

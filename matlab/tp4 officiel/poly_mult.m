function R = poly_mult(P,Q)
sp = size(P);
sq = size(Q);
sr = sq(2)+sp(2)-1;
R = zeros(1,sr);
for x = 1:sp(2)
    for y = 1:sq(2)
        R(x+y-1) = R(x+y-1)+(P(1,x)*Q(1,y));

    end
end

end

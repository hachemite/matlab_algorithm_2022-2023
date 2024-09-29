
function u = suite(A,u1,b,nb)

u = zeros(3,nb+1);
u(:,1) = u1;
for k = 1:nb
u(:,k+1) = A*u(:,k)+b;

end
end


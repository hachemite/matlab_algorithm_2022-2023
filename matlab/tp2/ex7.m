A = [5/8 ,1/4 ,1/8; 1/4,0,2; 1/8,2,5/8];
b =[1;-1;1];
u1 = [5;2;-4];

function u = suite(A,u1,b,nb)
%SUITE calcule les nb_it premiers termes de la suite Un = A*Un + b
% En sortie, le tableau u contient les itérés successifs (Un)1<=n<= nb
u = zeros(3,nb+1);
u(:,1) = u1;
for k = 1:nb
u(:,k+1) = A*u(:,k)+b;
end
end
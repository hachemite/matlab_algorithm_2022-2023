M = [2,5,0,8;2.89,-1,pi,7;4/5,2.5,0,sqrt(5);-2,0,2,21];
disp(M(3,4));
disp(M(3,:));
disp(M(:,4));
M1 = M([1 3], [2 4]);
disp(M1);
I = myflip(M);
disp(I);
B = linv(M);
disp(B)
function B = myflip(A)

[rows, cols] = size(A);

B = zeros(rows, cols);

for i = 1:rows
    B(i,:) = A(rows-i+1,:);
end
end
function B = linv(A)

[rows, cols] = size(A);

B = zeros(rows, cols);

for i = 1:cols
    B(:,i) = A(:,cols-i+1);
end
end


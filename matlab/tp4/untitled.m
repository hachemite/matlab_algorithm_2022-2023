function b = polno(a)
y = size(a);

for x=y(2):-1:1
    if a(1,x) ~= 0
        break
    end
end
b = a(1,1:x);
end
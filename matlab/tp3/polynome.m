function b = polynome(a)
y = size(a);

for x=y(2):-1:1
    a(x)=input("put the factors");
    if a(x) ~= 0
        break
    end
end
b = a;
end
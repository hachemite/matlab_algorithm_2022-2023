found = randi(100);

x = 999;

while found ~= x 
    disp(found);
    x = input("what number from 1 to hundred I think    ");
    disp("wrong try again");
end

fprintf("you found it , \t %d ",found);
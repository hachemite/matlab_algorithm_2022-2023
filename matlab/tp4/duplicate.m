
hasDuplicates = true;
while hasDuplicates == true
combinaison_secrete = randi([1 9],1,4);
disp(combinaison_secrete)
for i = 1:numel(v)-1
    for j = i+1:numel(v)
        
        if v(i) == v(j)
            hasDuplicates = true;
            break;
        end
    end
    
    if hasDuplicates
        break;
    end
end


if hasDuplicates
    disp('The vector contains duplicates.');

else
    disp('The vector does not contain duplicates.');
    hasDuplicates = false;
end
end
disp("the final one is");
disp(combinaison_secrete);

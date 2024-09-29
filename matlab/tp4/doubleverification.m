hasDuplicates = true;
while hasDuplicates

    combinaison_secrete = randi([1 9],1,4);
    disp(combinaison_secrete);
    hasDuplicates = false;
    for i = 1:numel(combinaison_secrete)-1
        for j = i+1:numel(combinaison_secrete)

            if combinaison_secrete(i) == combinaison_secrete(j)
                hasDuplicates = true;
                break;
            end
        end
        if hasDuplicates
            break;
        end
    end
end
disp("the final one is");
disp(combinaison_secrete)

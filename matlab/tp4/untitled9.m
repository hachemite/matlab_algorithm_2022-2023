combinaison_secrete = randi([1 9],1,4);
while  r 
    
    for x=1:9
        t = ismember(x,combinaison_secrete);
        r = sum(t)>1

    end
    combinaison_secrete = randi([1 9],1,4);
end
disp(combinaison_secrete)
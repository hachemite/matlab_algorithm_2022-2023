hasDuplicates = true;
while hasDuplicates
    combinaison_secrete = randi([1 9],1,4);
    hasDuplicates = false;
    for i = 1:4
        for j = i+1:4
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
disp(combinaison_secrete);
nb_coups_joues = 0;
while nb_coups_joues < 7
    mal_places = 0;
    bien_places = 0 ;
    proposition = input('Proposition ecrire de cette façon [N1 N2 N3 N4] : ');
    nb_coups_joues = nb_coups_joues + 1;
    for i=1:4
        if proposition(i)==combinaison_secrete(i)
            bien_places = bien_places + 1;
        end
    end
    for i=1:4
        for j=1:4
                if  i~=j && proposition(i)==combinaison_secrete(j) 
                    mal_places = mal_places+1;
                end
        end
    end
    
    fprintf('Bien placés : %d, mal placés : %d\n', bien_places, mal_places);
    

    if bien_places == 4
        fprintf('Bravo, vous avez gagné en %d coups !\n', nb_coups_joues);
        break;
    end
end


fprintf('La combinaison secrète était : %d %d %d %d\n', combinaison_secrete);

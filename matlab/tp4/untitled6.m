combinaison_secrete = [1 2 3 4];
nb_coups_joues = 0;

mal_places = 0; 
while nb_coups_joues < 6
proposition = input('Proposition ecrire de cette façon [N1 N2 N3 N4] : ');
for i=1:4
        for j=:4
                if  i~=j && proposition(i)==combinaison_secrete(j) 
                    mal_places = mal_places+1;
                end
        end
end
fprintf(' mal placés : %d\n', mal_places);
nb_coups_joues = nb_coups_joues +1;
end
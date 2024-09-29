%%
% | <https://www.mathworks.com *MONOSPACED TEXT* > | 
% 
% # ITEM1
% 
% * ITEM1
% 
%  PREFORMATTED
% 
% $$e^{\pi i} + 1 = 0$$
% 
% <<FILENAME.PNG>>
% 
% 
%  TEXT
% 
% * ITEM2
% 
% # ITEM2
% 
% Définition de la combinaison secrète
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
% Initialisation du nombre de coups joués
nb_coups_joues = 0;

% Boucle principale du jeu
while nb_coups_joues < 6
    % Saisie de la proposition du joueur
    proposition = input('Proposition de 4 chiffre sans doublon (séparez les chiffres par des espaces) : ');
    for x=1:4
        for y=1:4
            if x ~= y 
                if proposition(1,x) == proposition(1,y)
                    proposition = input('Proposition de 4 chiffre sans doublon (séparez les chiffres par des espaces) : ');  
                end
            end
        end
    end
    
    nb_coups_joues = nb_coups_joues + 1;
    bien_places = 0;
    mal_places = 0;
    for x=1:4
        for z=1:4
            if proposition(1,x) == combinaison_secrete(1,z)
                bien_places = bien_places +1;
            
            else
                mal_places = mal_places +1;
            end
        end
    end

    fprintf('Bien placés : %d, mal placés : %d\n', bien_places, mal_places);
    
    % Vérification de la victoire
    if bien_places == 4
        fprintf('Bravo, vous avez gagné en %d coups !\n', nb_coups_joues);
        break;
    end
end

% Affichage de la combinaison secrète
fprintf('La combinaison secrète était : %d %d %d %d\n', combinaison_secrete);

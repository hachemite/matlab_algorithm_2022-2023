% Définition de la longueur de la combinaison et du nombre maximum
% d'essais autorisés
longueur_combinaison = 4;
max_nb_essais = 10;

% Génération de la combinaison secrète
combinaison_secrete = randperm(9, longueur_combinaison);

% Initialisation du compteur d'essais
nb_essais = 0;

% Boucle principale du jeu
while nb_essais < max_nb_essais
    % Lecture de la proposition de l'utilisateur
    proposition = input('Proposez une combinaison (sans doublons) : ');
    
    % Vérification de la longueur de la proposition
    if length(proposition) ~= longueur_combinaison
        fprintf('La proposition doit contenir %d chiffres.\n', longueur_combinaison);
        continue;
    end
    
    % Vérification de l'absence de doublons dans la proposition
    if length(unique(proposition)) ~= longueur_combinaison
        fprintf('La proposition doit contenir des chiffres distincts.\n');
        continue;
    end
    
    % Incrémentation du compteur d'essais
    nb_essais = nb_essais + 1;
    
    % Comparaison de la proposition avec la combinaison secrète
    nb_chiffres_corrects = sum(proposition == combinaison_secrete);
    nb_chiffres_bons_mauvais = sum(ismember(combinaison_secrete, proposition)) - nb_chiffres_corrects;
    
    % Affichage des résultats de la comparaison
    fprintf('Essai %d : %d chiffre(s) correct(s), %d chiffre(s) bon(s) mais mal placé(s).\n', nb_essais, nb_chiffres_corrects, nb_chiffres_bons_mauvais);
    
    % Vérification de la réussite du joueur
    if nb_chiffres_corrects == longueur_combinaison
        fprintf('Bravo, vous avez trouvé la combinaison secrète en %d essais !\n', nb_essais);
        return;
    end
end

% Si le joueur n'a pas trouvé la combinaison secrète après max_nb_essais
% essais, le jeu est perdu
fprintf('Dommage, vous avez épuisé vos %d essais...\n', max_nb_essais);

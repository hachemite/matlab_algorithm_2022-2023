% demander la taille de la matrice
n = input('Entrez la taille de la matrice carrée : ');

% initialiser une matrice carrée n x n avec des zéros
matrice = zeros(n);

% saisir les éléments de la matrice
for i = 1:n
    for j = 1:n
        matrice(i,j) = input('Entrez l''élément (%d,%d) de la matrice : ', i, j);
    end
end

% remplacer les éléments diagonaux par des zéros
for i = 1:n
    matrice(i,i) = 0;
end

% afficher la matrice modifiée
disp('La matrice modifiée est :');
disp(matrice);

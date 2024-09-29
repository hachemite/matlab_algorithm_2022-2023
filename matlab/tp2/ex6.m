n = input('Entrez la taille de la matrice carrée : ');

matrice = zeros(n);

for i = 1:n
    for j = 1:n
        matrice(i,j) = input('Entrez l''élément %d , %d de la matrice : ', i, j);
    end
end

for i = 1:n
    matrice(i,i) = 0;
end

disp('La matrice modifiée est :');
disp(matrice);

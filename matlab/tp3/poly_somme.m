function c = poly_somme(P, Q)
% MY_POLYADD adds two polynomials together
% Inputs: P and Q - vectors representing the input polynomials
% Output: c - vector representing the sum of the input polynomials

% Determine the length of each input vector
n1 = length(P);
n2 = length(Q);

% Pad the shorter vector with zeros so that both vectors have the same length
if n1 < n2
    P = [P,zeros(1, n2 - n1)];
elseif n2 < n1
    Q = [Q,zeros(1, n1 - n2)];
end

% Add the corresponding coefficients of each polynomial
c = P + Q;
end


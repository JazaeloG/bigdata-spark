# Definir la matriz A
A = [1 2 3;     4 5 6];

# Definir la matriz B
B = [1 2 3 4 5 6;     7 8 9 10 11 12;     13 14 15 16 17 18];

# Definir la matriz resultante C
C = zeros(2, 6);

# Multiplicar las matrices A y B y almacenar el resultado en C
for i=1:2
  for j=1:6
    for k=1:3
      C(i, j) = C(i, j) + A(i, k) * B(k, j);
    end
  end
end

# Imprimir la matriz resultante C
disp(C);

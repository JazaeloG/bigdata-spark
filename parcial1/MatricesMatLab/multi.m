# Definir la matriz A
A = [1 2 3;     4 5 6;     7 8 9];

# Definir la matriz B
B = [9 8 7;     6 5 4;     3 2 1];

# Definir la matriz resultante C
C = zeros(3, 3);

# Multiplicar las matrices A y B y almacenar el resultado en C
for i=1:3
  for j=1:3
    for k=1:3
      C(i, j) = C(i, j) + A(i, k) * B(k, j);
    end
  end
end

# Imprimir la matriz resultante C
disp(C);

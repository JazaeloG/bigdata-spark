# Definir la matriz A
A = [1 2 3 4 5];

# Definir la matriz B
B = [1 2 3 4 5 6 7 8 9 10;     11 12 13 14 15 16 17 18 19 20;     21 22 23 24 25 26 27 28 29 30;     31 32 33 34 35 36 37 38 39 40;     41 42 43 44 45 46 47 48 49 50];

# Definir la matriz resultante C
C = zeros(1, 10);

# Multiplicar las matrices A y B y almacenar el resultado en C
for i=1:1
  for j=1:10
    for k=1:5
      C(i, j) = C(i, j) + A(i, k) * B(k, j);
    end
  end
end

# Imprimir la matriz resultante C
disp(C);

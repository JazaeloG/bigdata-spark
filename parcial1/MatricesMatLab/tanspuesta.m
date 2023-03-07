A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

At = zeros(3, 3);  % Creamos una matriz vacía para almacenar la transpuesta de A

for i = 1:3
    for j = 1:3
        At(j, i) = A(i, j);  % asignamos el valor transpuesto de A a At
    end
end

disp("Matriz A:");
disp(A);

disp("Matriz transpuesta At:");
disp(At);

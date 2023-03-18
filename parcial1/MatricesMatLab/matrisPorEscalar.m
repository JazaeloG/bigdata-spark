A = [3 1 2
     4 1 1;
     5 1 1];

B = [0 0 0
     0 0 0;
     0 0 0];

renglones = 3;
columas = 3;

Escalar = input('Ingrese el escalar para multiplicar la matriz: ');

%Con FOR
for ren=1:renglones;
  for col=1:columas;
    B(ren, col) = A(ren, col) * Escalar;
  endfor
endfor

A
B
%Definir patrones de entrada que representan las señales de peligro

%Señal x
X=[0100010;
0010100;
0001000;
0010100;
0100010;
0000000]

%Señal Admiracion
i=[0001000;
0001000;
0001000,
0001000;
0000000;
0001000]

%SeñalRayo
rayo=[0000010;
0000100;
0001000;
0011100;
0001000;
0010000]

%Señal de viento
viento=[0101010;
0010101;
0101010;
0010101;
0101010;
1111111]

%Señal C invertida
c=[0001000;
0010100;
0100010;
1000001;
1000001;
1000001]

rayomul = rayo(:) * rayo(:)';
cmul = C(:) * C(:)';
w2 = w1 + cmul + cmul;

u0 = c;
ulast = c;
d=1;

while (1)
  u0 = u0 * w2;

  for i=1:1:35
    if u0(i) > 0
      u0(i) = 1;
    else
      u0(i) = -1;
    endif
  endfor

  if (u0 == ulast)
      fprintf('Encontrado %d \n', c);
      u0
      ulast
      break;
  endif

  c = c + 1;
  ulast = u0;
end

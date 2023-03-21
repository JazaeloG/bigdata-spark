clear, clc
%Definir patrones de entrada que representan las señales de peligro

%Señal x
X=[0 1 0 0 0 1 0;
   0 0 1 0 1 0 0;
   0 0 0 1 0 0 0;
   0 0 1 0 1 0 0;
   0 1 0 0 0 1 0;
   0 0 0 0 0 0 0];

%Señal Admiracion
i=[0 0 0 1 0 0 0;
   0 0 0 1 0 0 0;
   0 0 0 1 0 0 0;
   0 0 0 1 0 0 0;
   0 0 0 0 0 0 0;
   0 0 0 1 0 0 0];

%SeñalRayo
rayo=[0 0 0 0 0 1 0;
      0 0 0 0 1 0 0;
      0 0 0 1 0 0 0;
      0 0 1 1 1 0 0;
      0 0 0 1 0 0 0;
      0 0 1 0 0 0 0];

%Señal de viento
viento=[0 1 0 1 0 1 0;
        0 0 1 0 1 0 1;
        0 1 0 1 0 1 0;
        0 0 1 0 1 0 1;
        0 1 0 1 0 1 0;
        1 1 1 1 1 1 1];

%Señal C invertida
c=[0 0 0 1 0 0 0;
0 0 1 0 1 0 0;
0 1 0 0 0 1 0;
1 0 0 0 0 0 1;
1 0 0 0 0 0 1;
1 0 0 0 0 0 1];

w0 = rayo(:) * rayo(:)';
c2 = c(:) * c(:)';
w2 = w0 + c2 + c2;

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
fprintf('Encontrado patrón %d \n', d);
u0
ulast
break;
endif

d = d + 1;
ulast = u0;
end

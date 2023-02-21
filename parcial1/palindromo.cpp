#include <iostream>
using namespace std;

int main()
{
     int n, num, digit, rev = 0;

     cout << "Ingresa un numero positivo: ";
     cin >> num;

     n = num;

     do
     {
         digit = num % 10;
         rev = (rev * 10) + digit;
         num = num / 10;
     } while (num != 0);

     cout << " El numero alreves es: " << rev << endl;

     if (n == rev)
         cout << " El numero es un palindromo.";
     else
         cout << " El numero no es un palindromo.";

    return 0;
}

#include <iostream>
#include <cmath>
using namespace std;

int octalToDecimal(int octalNumber);

int main()
{
   int octalNumber;
   cout << "Ingresa un numero octal: ";
   cin >> octalNumber;
   cout << octalNumber << " en octal = " << octalToDecimal(octalNumber) << " en decimal";

   return 0;
}
int octalToDecimal(int octalNumber)
{
    int decimalNumber = 0, i = 0, rem;
    while (octalNumber != 0)
    {
        rem = octalNumber % 10;
        octalNumber /= 10;
        decimalNumber += rem * pow(8, i);
        ++i;
    }
    return decimalNumber;
}

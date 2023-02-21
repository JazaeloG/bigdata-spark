#include <iostream>
using namespace std;

int main() {
    int n;
    long factorial = 1.0;

    cout << "Ingresa un numero positivo: ";
    cin >> n;

    if (n < 0)
        cout << "Error! Es un numero negativo.";
    else {
        for(int i = 1; i <= n; ++i) {
            factorial *= i;
        }
        cout << "Factoral de " << n << " = " << factorial;
    }

    return 0;
}

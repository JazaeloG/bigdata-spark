#include <iostream>
using namespace std;

int main() {
    
    double n1, n2, n3;

    cout << "Ingresa 3 numeros: ";
    cin >> n1 >> n2 >> n3;

    // check if n1 is the largest number
    if(n1 >= n2 && n1 >= n3)
        cout << "Numero mas grande es: " << n1;

    // check if n2 is the largest number
    else if(n2 >= n1 && n2 >= n3)
        cout << "Numero mas grande es: " << n2;
    
    // if neither n1 nor n2 are the largest, n3 is the largest
    else 
        cout << "Numero mas grand es: " << n3;
  
    return 0;
}

#include <iostream>
using namespace std;

bool check_prime(int n);

int main() {

  int n, i;
  bool flag = false;

  cout << "Ingresa un numero positivo: ";
  cin >> n;

  for(i = 2; i <= n/2; ++i) {
    if (check_prime(i)) {
      if (check_prime(n - i)) {
        cout << n << " = " << i << " + " << n-i << endl;
        flag = true;
      }
    }
  }

  if (!flag)
    cout << n << " No puede ser sumada con numeros primos.";

  return 0;
}

bool check_prime(int n) {
  int i;
  bool is_prime = true;

  if (n == 0 || n == 1) {
    is_prime = false;
  }

  for(i = 2; i <= n/2; ++i) {
    if(n % i == 0) {
      is_prime = false;
      break;
    }
  }

  return is_prime;
}

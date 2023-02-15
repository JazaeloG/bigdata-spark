#include <iostream>
using namespace std;

int main () {

	int first_number, second_number, sum;
	
	cout << "enter two integers: ";
	cin >> first_number >> second_number;

	//Se suman ambos números
	sum = first_number + second_number;

	//Imprime la suma
	cout <<first_number << " + " << second_number << " = " << sum;

	return 0;
} 

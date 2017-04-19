#include <iostream>
#include <math.h>
#include "KaratsubaMultiplication.h"

int main() {
	// two numbers
	long a,b;
	std::cout<<"Enter two numbers two mult:"<<std::endl;
	std::cin>>a>>b;
	std::cout << multiply(a,b) << std::endl;
	return 0;
}
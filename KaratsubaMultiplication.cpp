#include <iostream>
#include <math.h>
#include "KaratsubaMultiplication.h"

int Length_of_num(long value) //the number of digits long a number is
{
	int counter = 0;
	while (value != 0) {
		counter++;
		value /= 10;
	}
return counter;
}

long multiply(long x, long y) 
{
	// Find the number of digits of each of the numbers
	int xLength = Length_of_num(x);
	int yLength = Length_of_num(y);

	// the bigger of the two lengths
	int N = (int)(fmax(xLength, yLength));

	// For small N it is more efficient to just mult them
	if (N < 10)
	{
		return x * y;
	}
	//max length divided and rounded up
	N = ceil((N/2)); 

	long multiplier = pow(10, N); //half the number of digits of the larger number

	long b = x/multiplier;
	long a = x - (b * multiplier);
	long d = y / multiplier;
	long c = y - (d * N);
	long z0 = multiply(a,c);
	long z1 = multiply(a + b, c + d);
	long z2 = multiply(b, d);


    return z0 + ((z1 - z0 - z2) * multiplier) + (z2 * (long)(pow(10, 2 * N)));

}
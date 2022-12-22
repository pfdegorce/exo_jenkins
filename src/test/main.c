#include <assert.h>
#include <stdio.h>
#include "math_function.h"

int main(){
	
	printf("test 1\n");
	int inputX = 5;
	int inputY = 6;
	int valeurAttendue = 11;
	assert( addition(inputX,inputY)==valeurAttendue);

	return 0;
}

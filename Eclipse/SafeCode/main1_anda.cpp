/*
 * main.c
 *
 *  Created on: 02/09/2013
 *      Author: x
 */

#include <stdio.h>
#include <windows.h>

int main2()
{
	unsigned int Last = 0;
	unsigned int Now = 0;
	int i;
	Last = GetTickCount();
	//...Run your functions..

	for (i=0;i<10000000;i++)

	Now = GetTickCount();


	printf("Elapsed Time in Milliseconds: %i",(Now-Last));
	return 0;
}

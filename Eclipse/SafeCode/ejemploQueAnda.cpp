/*
 * main.cpp
 *
 *  Created on: 02/09/2013
 *      Author: http://stackoverflow.com/questions/1739259/how-to-use-queryperformancecounter
 */

#include <stdio.h>
#include <windows.h>
#include <iostream>
using namespace std;


double PCFreq = 0.0;
__int64 CounterStart = 0;

void StartCounter()
{
    LARGE_INTEGER li;
    if(!QueryPerformanceFrequency(&li))
	printf("QueryPerformanceFrequency failed!\n");

    PCFreq = (li.QuadPart)/1000000.0;

    QueryPerformanceCounter(&li);
    CounterStart = li.QuadPart;
}
double GetCounter()
{
    LARGE_INTEGER li;
    QueryPerformanceCounter(&li);
    return (li.QuadPart-CounterStart)/PCFreq;
}

int main()
{
    StartCounter();
    Sleep(1000);
    cout << GetCounter() <<"\n";
    return 0;
}

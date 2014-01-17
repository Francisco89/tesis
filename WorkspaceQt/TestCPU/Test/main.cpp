#include <QCoreApplication>
#include <stdio.h>
#include <time.h>
#include <omp.h>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    
    clock_t start, end;
    double runTime;
    //start = clock();
    start = omp_get_wtime();
    int i, num = 1, primes = 0;
    int limit=1000000;
    printf("Calculando numeros primos menores que %d...\n",limit);
    #pragma omp parallel for schedule(dynamic) reduction(+ : primes)
    for(num=0; num <= limit; num++) {
    i = 2;
    while (i <= num) {
    if(num % i == 0)
    break;
    i++;
    }
    if (i == num){
    primes++;
    printf("nro=%d es primo\n",num);
    }
    }
    end = omp_get_wtime();
    //end = clock();
    runTime = (end - start); // /(double) CLOCKS_PER_SEC;
    printf("This machine calculated all %d prime numbers under %d in %g seconds\n", primes, limit, runTime);

    return a.exec();
}

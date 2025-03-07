#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <omp.h>

#define N 1000 // Matrix size

uint64_t compute_timediff(clock_t start, clock_t end, uint8_t print) {
    uint64_t ticks = end - start;
    uint64_t nanosec = (ticks * 1000000000) / CLOCKS_PER_SEC;
    if (print)
        printf("%llu ns\n", (unsigned long long)nanosec);
    return nanosec;
}

int main() {
    int i, j, k, sum;
    clock_t start_alloc, end_alloc, start_init, end_init, start_mult, end_mult;

    // Allokation und Initialisierung der Matrizen
    start_alloc = clock();
    int *matrix_a = (int *)malloc(N * N * sizeof(int));
    int *matrix_b = (int *)malloc(N * N * sizeof(int));
    int *matrix_c = (int *)calloc(N * N, sizeof(int));
    end_alloc = clock();

    srand(time(NULL));

	start_init = clock();
    // Initialisierung der Matrizen
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            matrix_a[i * N + j] = rand() % 100;
            matrix_b[i * N + j] = rand() % 100;
        }
    }
	end_init = clock();

    // Matrixmultiplikation (parallelisiert)
    start_mult = clock();
    #pragma omp parallel for private(i, j, k, sum) shared(matrix_a, matrix_b, matrix_c)
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            sum = 0;
            for (k = 0; k < N; k++) {
                sum += matrix_a[i * N + k] * matrix_b[k * N + j];
            }
            matrix_c[i * N + j] = sum;
        }
    }
    end_mult = clock();

    // Berechnung der Zeiten
   // printf("Allocieren\n");
    compute_timediff(start_alloc, end_alloc, 1);
	//printf("Initialisieren\n");
    compute_timediff(start_init, end_init, 1);
    //printf("Multiplizieren\n");
    compute_timediff(start_mult, end_mult, 1);
   // printf("wobei die Laenge der Matrizen = 1000\n");

    // Freigabe des Speichers
    free(matrix_a);
    free(matrix_b);
    free(matrix_c);

    return 0;
}


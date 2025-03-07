#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 1000 // Matrix size

uint64_t compute_timediff(clock_t start, clock_t end, uint8_t print) {
    uint64_t ticks = end - start;
    uint64_t nanosec = (ticks * 1000000000) / CLOCKS_PER_SEC;
    if (print)
        printf("NS elapsed: %llu ns\n", (unsigned long long)nanosec);
    return nanosec;
}

int main() {
    int i, j, k, sum;
    clock_t start_alloc, end_alloc, start_init, end_init, start_mult, end_mult;

    // Allokation der Matrizen
    start_alloc = clock();
    int **matrix_a = (int **)malloc(N * sizeof(int *));
    int **matrix_b = (int **)malloc(N * sizeof(int *));
    int **matrix_c = (int **)malloc(N * sizeof(int *));
    for (i = 0; i < N; i++) {
        matrix_a[i] = (int *)malloc(N * sizeof(int));
        matrix_b[i] = (int *)malloc(N * sizeof(int));
        matrix_c[i] = (int *)malloc(N * sizeof(int));
    }
    end_alloc = clock();

    // Initialisierung der Matrizen
    start_init = clock();
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            matrix_a[i][j] = rand() % 100;
            matrix_b[i][j] = rand() % 100;
            matrix_c[i][j] = 0;
        }
    }
    end_init = clock();

    // Matrixmultiplikation
    start_mult = clock();
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            sum = 0;
            for (k = 0; k < N; k++) {
                sum += matrix_a[i][k] * matrix_b[k][j];
            }
            matrix_c[i][j] = sum;
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
    //printf("wobei die Laenge der Matrizen = 1000\n");

    // Freigabe des Speichers
    for (i = 0; i < N; i++) {
        free(matrix_a[i]);
        free(matrix_b[i]);
        free(matrix_c[i]);
    }
    free(matrix_a);
    free(matrix_b);
    free(matrix_c);

    return 0;
}

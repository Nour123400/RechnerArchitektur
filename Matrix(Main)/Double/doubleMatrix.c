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
    int i, j, k;
    double sum;
    clock_t start_alloc, end_alloc, start_init, end_init, start_mult, end_mult;

    // Allocation of matrices
    start_alloc = clock();
    double **matrix_a = (double **)malloc(N * sizeof(double *));
    double **matrix_b = (double **)malloc(N * sizeof(double *));
    double **matrix_c = (double **)malloc(N * sizeof(double *));
    for (i = 0; i < N; i++) {
        matrix_a[i] = (double *)malloc(N * sizeof(double));
        matrix_b[i] = (double *)malloc(N * sizeof(double));
        matrix_c[i] = (double *)malloc(N * sizeof(double));
    }
    end_alloc = clock();

    // Initialization of matrices
    start_init = clock();
    srand(time(NULL));
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            matrix_a[i][j] = ((double)rand() / RAND_MAX) * 100.0;
            matrix_b[i][j] = ((double)rand() / RAND_MAX) * 100.0;
            matrix_c[i][j] = 0.0;
        }
    }
    end_init = clock();

    // Matrix multiplication
    start_mult = clock();
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            sum = 0.0;
            for (k = 0; k < N; k++) {
                sum += matrix_a[i][k] * matrix_b[k][j];
            }
            matrix_c[i][j] = sum;
        }
    }
    end_mult = clock();

    // Calculation of times
    //printf("Allocation\n");
    compute_timediff(start_alloc, end_alloc, 1);
   // printf("Initialization\n");
    compute_timediff(start_init, end_init, 1);
   // printf("Multiplication\n");
    compute_timediff(start_mult, end_mult, 1);
   // printf("where the length of matrices = 1000\n");

    // Freeing memory
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


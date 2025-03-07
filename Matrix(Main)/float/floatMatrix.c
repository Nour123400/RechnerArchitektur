#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 1000 // Matrix size

uint64_t compute_timediff(clock_t start, clock_t end, uint8_t print) {
    uint64_t ticks = end - start;
    uint64_t nanosec = (ticks * 1000000000) / CLOCKS_PER_SEC;
    if (print)
        printf("%llu ns\n", (unsigned long long)nanosec);
    return nanosec;
}

int main() {
    int i, j, k;
    float sum;
    clock_t start_alloc, end_alloc, start_init, end_init, start_mult, end_mult;

    // Allocation of matrices
    start_alloc = clock();
    float **matrix_a = (float **)malloc(N * sizeof(float *));
    float **matrix_b = (float **)malloc(N * sizeof(float *));
    float **matrix_c = (float **)malloc(N * sizeof(float *));
    for (i = 0; i < N; i++) {
        matrix_a[i] = (float *)malloc(N * sizeof(float));
        matrix_b[i] = (float *)malloc(N * sizeof(float));
        matrix_c[i] = (float *)malloc(N * sizeof(float));
    }
    end_alloc = clock();

    // Initialization of matrices
    start_init = clock();
    srand(time(NULL));
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            matrix_a[i][j] = ((float)rand() / RAND_MAX) * 100.0f;
            matrix_b[i][j] = ((float)rand() / RAND_MAX) * 100.0f;
            matrix_c[i][j] = 0.0f;
        }
    }
    end_init = clock();

    // Matrix multiplication
    start_mult = clock();
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            sum = 0.0f;
            for (k = 0; k < N; k++) {
                sum += matrix_a[i][k] * matrix_b[k][j];
            }
            matrix_c[i][j] = sum;
        }
    }
    end_mult = clock();

    // Calculation of times
   // printf("Allocation\n");
    compute_timediff(start_alloc, end_alloc, 1);
    //printf("Initialization\n");
    compute_timediff(start_init, end_init, 1);
    //printf("Multiplication\n");
    compute_timediff(start_mult, end_mult, 1);
    //printf("where the length of matrices = 1000\n");

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



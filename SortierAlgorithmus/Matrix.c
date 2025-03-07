#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 8 // Matrix size



int main() {
    int i, j, k, sum;

    // Allokation der Matrizen
    int **matrix_a = (int **)malloc(N * sizeof(int *));
    int **matrix_b = (int **)malloc(N * sizeof(int *));
    int **matrix_c = (int **)malloc(N * sizeof(int *));
    for (i = 0; i < N; i++) {
        matrix_a[i] = (int *)malloc(N * sizeof(int));
        matrix_b[i] = (int *)malloc(N * sizeof(int));
        matrix_c[i] = (int *)malloc(N * sizeof(int));
    }


    // Initialisierung der Matrizen
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            matrix_a[i][j] = rand() % 100;
            matrix_b[i][j] = rand() % 100;
            matrix_c[i][j] = 0;
        }
    }

    // Matrixmultiplikation
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            sum = 0;
            for (k = 0; k < N; k++) {
                sum += matrix_a[i][k] * matrix_b[k][j];
            }
            matrix_c[i][j] = sum;
        }
    }
    // Freigabe des Speichers
    for (i = 0; i < N; i++) {
        free(matrix_a[i]);
        free(matrix_b[i]);
        free(matrix_c[i]);
    }
    //free(matrix_a);
   // free(matrix_b);
   // free(matrix_c);

    return 0;
}
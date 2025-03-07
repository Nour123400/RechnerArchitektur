#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <time.h>
#include <stdint.h>

#define V 1024
static clock_t start, end;

uint64_t compute_timediff(clock_t start, clock_t end, uint8_t print) {
    uint64_t ticks = end - start;
    uint64_t nanosec = (ticks * 1000000000) / CLOCKS_PER_SEC;
    if (print)
        printf("NS elapsed: %llu ns\n", (unsigned long long)nanosec);
    return nanosec;
}

int minDistance(int dist[], int sptSet[]) {
    int min = INT_MAX;
    int min_index = 0;

    for (int v = 0; v < V; v++) {
        if (sptSet[v] == 0 && dist[v] <= min) {
            min = dist[v];
            min_index = v;
        }
    }

    return min_index;
}

void printSolution(int dist[]) {
     printf("Vertex \t\t Distance from Source\n");
    for (int i = 0; i < V; i++) {
         printf("%d \t\t %d\n", i, dist[i]);
    }
}

void dijkstra(int graph[V][V], int src) {
    int dist[V];
    int sptSet[V];

    for (int i = 0; i < V; i++) {
        dist[i] = INT_MAX;
        sptSet[i] = 0;
    }

    dist[src] = 0;

    for (int count = 0; count < V - 1; count++) {
        int u = minDistance(dist, sptSet);

        sptSet[u] = 1;

        for (int v = 0; v < V; v++) {
            if (!sptSet[v] && graph[u][v] && dist[u] != INT_MAX && dist[u] + graph[u][v] < dist[v]) {
                dist[v] = dist[u] + graph[u][v];
            }
        }
    }

    printSolution(dist);
}

int main() {

    // Create a graph of size V x V
    int graph[V][V];

    // Fill the graph with random weights (0-100)
    srand(time(NULL));
    for (int j = 0; j < V; j++) {
        for (int i = 0; i < V; i++) {
            if (i == j) {
                graph[i][j] = 0;
            } else {
                graph[i][j] = rand() % 101; // Random weight between 0 and 100
            }
        }
    }

    start = clock();
    dijkstra(graph, 0);
    end = clock();

    compute_timediff(start, end, (uint8_t)1);

    return 0;
}


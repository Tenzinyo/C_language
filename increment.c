#include <stdio.h>
#define SIZE 1000000

int array[SIZE];
int main(){
    for (int i = 0; i<SIZE; i++){
        array[i]=1;
    }
    float accumulator = 0.0f; 
    for(int i=0;i<1000000; i++){
        accumulator+= array[i];
    }
    printf("%f\n", accumulator);
}

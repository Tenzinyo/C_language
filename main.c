#include <stdio.h>


//Return 3a - 10b - 2 
extern int myFunction(int a, int* b);

int main() {
  int x = 10;
  int y = 15;
  int result = myFunction(x, &y);
  printf("The result is: %d\n", result);
  return 0;
}

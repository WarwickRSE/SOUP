
#include <stdio.h>

int main(){

  int i;
  const int end = 100;

  for(i = 1; i <= end; i++){

    if(i%3 == 0 && i%5 != 0) printf("fizz\n");
    if(i%5 == 0 && i%3 != 0) printf("buzz\n");
    if(i%5 != 0 && i%3 != 0) printf("%i\n", i);
    if(i%15 == 0) printf("fizzbuzz\n");

  }
  return 0;
}

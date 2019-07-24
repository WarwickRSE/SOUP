
#include <stdio.h>

int main(){

  int i, counter_3s, counter_5s;
  const int end = 100;

  counter_3s = 0;
  counter_5s = 0;
  for(i = 1; i <= end; i++){
    counter_3s ++;
    counter_5s ++;
    if(counter_3s != 3 && counter_5s != 5){
      printf("%i", i);
    }
    if(counter_3s == 3){
      printf("fizz");
      counter_3s = 0;
    }
    if(counter_5s == 5){
      printf("buzz");
      counter_5s = 0;
    }
    printf("\n");
  }
  return 0;
}

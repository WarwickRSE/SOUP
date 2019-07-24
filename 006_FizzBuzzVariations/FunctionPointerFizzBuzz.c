
#include <stdio.h>

void print_i(int i);
void print_fizz(int i);
void print_buzz(int i);
void print_fizzbuzz(int i);

int main(){


  void (*fn[4])(int); //Function ptr
  int offset = 0, i;
  const int end = 30, fizz = 3, buzz = 5;

  fn[0] = &print_i;
  fn[1] = &print_fizz;
  fn[2] = &print_buzz;
  fn[3] = &print_fizzbuzz;

  for(i = 1; i <= end; i++){

    offset = ((i % fizz) == 0) + 2 * ((i % buzz) == 0);

    (fn[offset])(i);

  }


  return 0;
}


void print_i(int i){

  printf("%i\n", i);

}

void print_fizz(int i){
  printf("fizz\n");
}

void print_buzz(int i){

  printf("buzz\n");
}

void print_fizzbuzz(int i){

  printf("fizzbuzz\n");

}



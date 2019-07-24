//Fizz buzz extended edition (all parameters) without
// any 'if' or substitutes.
// If you like C-style strings, you'll love this


#include <stdio.h>
int main(){
  int i, end = 30, fizz = 3, buzz = 5;
  char fmt[28] = "%i  \n\0fizz\n\0buzz\n\0fizzbuzz\n\0";
  for(i = 1; i <= end; i++)printf(fmt+(((i % fizz) == 0) + 2 * ((i % buzz) == 0))*6, i);
  return 0;
}


These are some model solutions to some simple problems done both using recursion and using loops. These were
given as challenges in our blog post, https://blogs.warwick.ac.uk/researchsoftware/entry/again_and_again/

There are the following functions:

In fibonacci_challenge2.py:
  check_fibonacci(n) : hard coded sequence values from n=1 to n=40 for testing or checking.
  fibonacci_wasteful(n) : the obvious, wasteful recursive Fibonacci calculator
  fibonacci_wasteful_counted(n, start_count) : as previous function, but fills the global variables fib_val with n
    and fib_counts with the number of calls for each value of m < n. Demonstrates just how bad this method is, and
    shows what the pattern of excess calls is.
  fibonacci(n) : A wrapper because of the way the following function is coded, which returns fib(n), instead of the
    tuple used in the recursive inner function.
  fib_clean(n) : The quickest way to calculate fib(n), using a tuple return.
  fibonacci_counted(n), fib_clean_counted : As previous 2 functions but including the counts.
  fibonacci_loop(n) : The clean recursive method of fib_clean rewritten as a loop. Spot the unneeded extra step.

In list_combination.py
  combine_three_lists(list1, list2, list3) : The obvious way to combine a fixed number of lists, with nested loops.
  combine_lists(list_of_lists) : The Inductive way to combine any number of lists, using loops.
  combine_lists_recursive(list_of_lists) : As the previous, but using a recursive technique

Disclaimer: The code here does not attempt to be 'Pythonic' and does not attempt to avoid unnecessary copies. Mostly
the examples are coded so that the recursive and loop versions are deliberately similar.


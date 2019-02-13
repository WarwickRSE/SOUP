

def check_fibonacci(n):
  """Returns the nth Fibonacci number for n up to 40"""
  fib = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181,6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155]

  if n > 40 or n < 1:
    print('Sorry, n should be 40 or less and greater than 0')
    return 0
  else:
    return fib[n-1]

def fibonacci_wasteful(n):
  """Recursively calculate the nth Fibonacci number, in obvious but wasteful fashion"""
  if n == 1 or n == 2:
    return 1
  else:
    return fibonacci_wasteful(n-1) + fibonacci_wasteful(n-2)


#Used by 'counted' functions for ease of counting
fib_val = 0
fib_counts = []

def fibonacci_wasteful_counted(n, start_count=True):
  """Recursively calculate the nth Fibonacci number, in obvious but wasteful fashion, counting number of calls to each n"""
  global fib_counts, fib_val
  if start_count:
    fib_val = n
    fib_counts = [0]*n
    fib_counts[n-1] = 1
  else:
    fib_counts[n-1] += 1

  if n == 1 or n == 2:
    return 1
  else:
    return fibonacci_wasteful_counted(n-1, start_count=False) + fibonacci_wasteful_counted(n-2, start_count=False)


def fibonacci(n):
  """Wrapper around the clean recursive Fibonacci routine"""
  return fib_clean(n)[1]

def fib_clean(n):
  """ Calcuate the nth Fibonacci number, without unnecesarry work"""
  if n == 2:
    return 1, 1
  else:
    tmp, b = fib_clean(n-1)
    a = b
    b = b + tmp
    return a, b

def fibonacci_counted(n):
  """Wrapper around the clean recursive Fibonacci routine with counts"""
  return fib_clean_counted(n)[1]

def fib_clean_counted(n, start_count=True):
  """ Calcuate the nth Fibonacci number, without unnecesarry work"""
  global fib_counts, fib_val
  if start_count:
    fib_val = n
    fib_counts = [0]*n
    fib_counts[n-1] = 1
  else:
    fib_counts[n-1] += 1

  if n == 2:
    return 1, 1
  else:
    tmp, b = fib_clean(n-1, start_count=False)
    a = b
    b = b + tmp
    return a, b


def fibonacci_loop(n):
  """Calculate the nth Fibonacci number using a loop"""
  nn = n - 2 #Already done 1st and second vals
  fib = [1, 1]
  while nn > 0:
    tmp = fib[0]
    fib[0] = fib[1]
    fib[1] +=tmp
    nn -= 1
  #If even, return the first val, else, the second
  return fib[n%2]


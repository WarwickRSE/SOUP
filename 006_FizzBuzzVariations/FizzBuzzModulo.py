
def fizzbuzz():

  end = 100
  for i in range(1, end):
    if(i%3 == 0 and i%5 != 0): print("fizz")
    if(i%5 == 0 and i%3 != 0): print("buzz")
    if(i%15 == 0): print("fizzbuzz")
    if(i%5 != 0 and i%3 != 0): print(i)

if __name__ == "__main__":
  fizzbuzz()

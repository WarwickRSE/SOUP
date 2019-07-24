

def fizzbuzz():

  end = 100
  counter_3s = 0
  counter_5s = 0

  for i in range(1, end):

    counter_3s += 1
    counter_5s += 1

    if(counter_3s != 3 and counter_5s != 5):
      print(i)
      continue
    #No Python-version independent way to print without a newline... so:
    str = ""
    if(counter_3s == 3):
      str = "fizz"
      counter_3s = 0
    if(counter_5s == 5):
      str += "buzz"
      counter_5s = 0
    print(str)

if __name__ == "__main__":
  fizzbuzz()


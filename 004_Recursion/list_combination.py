
def combine_three_lists(list1, list2, list3):
  """The obvious solution to combining a known number of lists"""
  output = []
  for i in range(0, len(list1)):
    for j in range(0, len(list2)):
      for k in range(0, len(list3)):
        string = list1[i] + list2[j] + list3[k]
        print(string)
        output.append(string)
        print(output)
  return output

def combine_lists(list_of_lists):
  """Produce all combinations of one word from each list in input list of lists
  The key principle is to think only about combining this list with all previous ones,
  assuming those have already been dealt with. I.e. an inductive solution.

  """
  list_size = len(list_of_lists)

  tmp = []
  output = list_of_lists[0]
  total= len(output)

  for i in range(1, list_size):
    list=list_of_lists[i]
    total*=len(list)
    for element in list:
      for i in range(len(output)):
        tmp.append(output[i]+ element)
    output = tmp
    tmp = []

  return output

def combine_lists_recursive(list_of_lists):
  """Recursive combination function. This makes no attempt to avoid temporary copies"""

  if(len(list_of_lists) < 2):
    #Nothing to combine
    return list_of_lists
  elif(len(list_of_lists) == 2):
    list1 = list_of_lists[0]
  else:
    list1 = combine_lists_recursive(list_of_lists[0:-1])

  list2 = list_of_lists[-1]
  output = []
  for element2 in list2:
      for element1 in list1:
        output.append(element1 + element2)

  return output

if __name__ == 'main':

  list_of_lists = [['red', 'glaring'], ['lazy', 'full'], ['bobcat', 'mandrel', 'picnic']]

  print("Using naieve approach")
  print(combine_three_lists(list_of_lists[0], list_of_lists[1], list_of_lists[2]))

  print("Using loop")
  print(combine_lists(list_of_lists))

  print("Recursively")
  print(combine_lists_recursive(list_of_lists))

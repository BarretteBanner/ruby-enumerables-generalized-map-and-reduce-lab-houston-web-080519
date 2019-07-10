# Your Code Here
def map(array)
  counter = 0
  new_array = []
  while counter < array.length do 
   new_array.push(yield(array[counter]))
    counter += 1
  end 
  return new_array
end  


def reduce(array)
  counter = 0 
  total = 0  
  while counter < array.length do
     yield(array, total)
    counter += 1 
  end
  total = yield(array, total)
  return total
end
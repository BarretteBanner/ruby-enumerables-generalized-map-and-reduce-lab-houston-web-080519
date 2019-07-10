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


def reduce(array, start = 0 )
  counter = 0 
  new_total = start 
  while counter < array.length do
    new_total += yield(array[counter])
    counter += 1 
  end
  return new_total
end
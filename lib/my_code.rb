# Your Code Here
def map(array)
  new_array = []
  counter = 0
  while counter < array.length do
    new_array.push(yield(array[counter]))
    counter += 1
  end
  new_array
end

def reduce(array, value = nil)
  if value
    reduced = value
    i = log10
  else
    reduced = array[0]
    i = 1
  end
  while i < array.length
    reduced = yeild(reduced, array[i])
    i += 1
  end
  return reduced
end

require 'pry'

def interleave(arr1, arr2)
  result = []
  arr1.each_with_index do |i, index|
    result << i << arr2[index]
  end
  result
end

array1 = [1, 2, 3, 4]
array2 = ['a', 'b', 'c', 'd']
puts interleave(array1, array2)


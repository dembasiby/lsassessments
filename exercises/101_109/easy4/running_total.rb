
def running_total(arr)
  new_arr = []
  arr.each do |i|
    if arr.index(i) == 0
      new_arr << i
    else
      new_arr << i + new_arr[arr.index(i) - 1]
    end
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

NUMBERS = [ "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]


def alphabetic_number_sort(arr)
  arr.sort { |num, num2| NUMBERS[num] <=> NUMBERS[num2] }
end

# TEST CASES
p alphabetic_number_sort((0..15).to_a)
p alphabetic_number_sort((0..5).to_a)
p alphabetic_number_sort((0..11).to_a)
p alphabetic_number_sort((0..1).to_a)

#INPUTS
#- array of integers from 0 to 19

#OUTPUTS
#- array of integers 
#- sorted based on the English word for each number

# ALGORITHM
# - Define a constant variable with the string representation as elements of an array
#    start at 'zero' and end at 'nineteen'
# - Sort the given array based on the constant variable elements.

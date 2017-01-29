def reverse_odd_words(string)
  if string.empty? || string.split.size < 2
    string
  else
    reverse(string)
  end
end

def reverse(string)
  string = string.chars
  point = string.pop

  string = string.join('').split(' ')

  string.each_with_index.map do |word, index|
    if index.odd?
      word.reverse
    else
      word
    end
  end.join(' ') + point
end

puts reverse_odd_words("") == ''
puts reverse_odd_words(".") == '.'
puts reverse_odd_words("hello") == 'hello'
puts reverse_odd_words("hello world.") == 'hello dlrow.'
puts reverse_odd_words("hello world .") == 'hello dlrow.'
puts reverse_odd_words("hello  world .") == 'hello dlrow.'
puts reverse_odd_words("hello world  .") == 'hello dlrow.'
puts reverse_odd_words("hello world world .") == 'hello dlrow world.'


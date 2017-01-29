def string_to_signed_integer(str)
  total = 0
  str.chars.each do |i|
    if i == '-' || i == '+'
      next
    else
      total = 10 * total + DIGITS[i]
    end
  end
  str[0].include?('-') ? -(total) : total
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

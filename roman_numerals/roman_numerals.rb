class Fixnum
  ROMAN_MAP = { 1 => "I",
                  4 => "IV",
                  5 => "V",
                  9 => "IX",
                  10 => "X",
                  40 => "XL",
                  50 => "L",
                  90 => "XC",
                  100 => "C",
                  400 => "CD",
                  500 => "D",
                  900 => "CM",
                  1000 => "M" }

  def to_roman
    roman_numerals = Array.new(3999) do |index|
      target = index + 1
      ROMAN_MAP.keys.sort { |a, b| b <=> a }.inject("") do |roman, div|
        times, target = target.divmod(div)
        roman << ROMAN_MAP[div] * times
      end
    end

    is_roman = /^#{ROMAN_MAP.keys.sort { |a,b| b <=> a }.inject("") do |exp,n|
      num = ROMAN_MAP[n]
      exp << if num.length == 2 then "(?:#{num})?" else num + "{0,3}" end
                   end}$/

  end
when IS_ROMAN  then puts ROMAN_NUMERALS.index(line) + 1
end

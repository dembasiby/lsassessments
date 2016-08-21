class Diamond
  ALPHABET = ('A'..'Z').to_a

  def self.make_diamond(letter)
    distance = ALPHABET.index(letter)
    space = " " * distance

    if letter == 'A'
      "#{letter}\n"
    else
      ('A'..ALPHABET[ALPHABET.index(letter)]).to_a.each do |x|
        (space + x + space + '\n') + (space + x + space + '\n').reverse
      end
    end
  end
end


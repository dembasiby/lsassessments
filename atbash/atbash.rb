class Atbash
  def self.encode(word)
    first_13_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
    last_13_letters =  ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n"]

    word == word.split.join ? word : word = word.gsub!(/\W/, '')

    word.downcase.split('').map do |char|
      if first_13_letters.include?(char)
        last_13_letters[first_13_letters.index(char)]
      elsif last_13_letters.include?(char)
        first_13_letters[last_13_letters.index(char)]
      else
        char
      end
    end.join.scan(/.{1,5}/).join(' ')
  end
end

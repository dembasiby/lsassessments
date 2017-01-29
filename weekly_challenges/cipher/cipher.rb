# Create a simple shift cipher
#
# + substitution:w
# cipher
#  - encoding
#    - for each character in the plain text,shift to right encoding
#     - if we reach the end of the alphabet, wrap back to 'a'
#    - If someone doesn't submit a key at all, generate a truly random key of at least 100 characters in length
#  - decoding
#    - for each character in the plain text, shift to the left, based on the distance of the key character at the same position to 'z'
#     - if we reach the beginning of the alphabet, wrap back to 'z'
#
# - shift right encode a character
#  - shift to the right, based on a  key character(char)
#   - shift right (char - 'a') positions
#   - with wrap
#
# - shift left decode a character
#  - shift to the left, based on a  key character(char)
#   - shift left (char - 'a') positions
#   - with wrap

class Cipher
  attr_accessor :key
  def initialize(key=generate_key)
    validate_key(key)
    @key = key
  end

  def validate_key(key)
    raise ArgumentError  if key.match(/[A-Z0-9]/) || key.empty?
  end

  def generate_key
    (1..100).map { |_| ('a'..'z').to_a.sample }.join
  end

  def encode(plain_text)
    result = []
    plain_text.split('').each_with_index do |char, index|
      distance = @key[index].ord - 'a'.ord
      result << shift(char, distance)
    end
    result.join
  end

  def decode(plain_text)
    result = []
    plain_text.split('').each_with_index do |char, index|
      distance = @key[index].ord - 'a'.ord
      result << shift(char, -(distance))
    end
    result.join
  end

  def shift(char, distance)
    (char.ord + distance).chr
  end
end

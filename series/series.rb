class Series
  def initialize(str)
    @str = str.split('').map(&:to_i)
  end

  def slices(num)
    raise ArgumentError if num > @str.size
    count = 0
    arr = []

    while count < @str.size
      arr << @str[count, num]
      count += 1
    end

    if num > 1
      arr =  arr.select do |element| 
        element.size == num
      end
    else 
     arr
    end
  end
end

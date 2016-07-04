class PhoneNumber
  def initialize(number)
    @number = number
  end

  def number
    if @number.to_i.to_s.length != @number.length
      @number = @number.gsub(/\W/, '')
    else
      @number
    end

    if @number.to_i.to_s.length != @number.length ||
      @number.length < 10
      @number = "0000000000"
    else
      if @number.length == 11 && @number[0] == '1'
        @number = @number[1..-1]
      elsif @number.length > 10
        @number = '0000000000'
      else 
        @number
      end
    end
  end

  def area_code
    @number[0, 3]
  end

  def to_s
    num = PhoneNumber.new(number)
    "(#{num.number[0, 3]}) #{num.number[3, 3]}-#{num.number[6, 4]}"
  end
end

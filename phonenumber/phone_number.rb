class PhoneNumber
  def initialize(number)
    @number = number
  end

  def number
    if @number.include?(('a'..'z').to_a)
      '0' * 10
    else
      @number.gsub!(/\W/, '')
    end
  end
end

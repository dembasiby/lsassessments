class OCR
  def initialize(text)
    @text = text
  end

  def convert
    if convert_number
      convert_number
    else
      "?"
    end
  end

  def convert_number
    case @text
    when " _\n| |\n|_|\n" then '0'
    when "\n  |\n  |\n"   then '1'
    when " _\n _|\n|_\n"  then '2'
    when " _\n _|\n _|\n" then '3'
    when "\n|_|\n  |\n"   then '4'
    when " _\n|_\n _|\n"  then '5'
    when " _\n|_\n|_|\n"  then '6'
    when " _\n  |\n  |\n" then '7'
    when " _\n|_|\n|_|\n" then '8'
    when " _\n|_|\n _|\n" then '9'
    end
  end
end

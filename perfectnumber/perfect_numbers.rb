class PerfectNumber
  def self.classify(num)
    count = 1
    result = []

    while count < num
      result << count if num % count == 0
      count += 1
    end

    total = result.reduce { |acc, el| acc += el }
    raise RuntimeError if num.nil? || num < 1
    return "perfect" if total == num
    return "deficient" if total < num
    return "abundant" if total > num
   end
end

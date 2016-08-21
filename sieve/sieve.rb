class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    isComposite = [@num];
    primes = [@num/Math.log(@num)]

    # mark 0, 1 as not prime
    isComposite[0] = 1
    isComposite[1] = 1

    # loop from 2 to sqrt(@num)
    m = 2
    while m * m <= @num do
      m += 1
      if isComposite[m] != 1
        z = m * m
        while z <= @num do
          isComposite[z] = 1
          z += m
        end
      end
    end

    p = 0
    h = 0
    while h <= @num
      if isComposite[h] != 1
        primes[p] = h
        p += 1
      end
      h += 1
    end
    primes
  end
end

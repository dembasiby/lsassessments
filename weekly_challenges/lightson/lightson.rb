=begin

INPUT:
switches 1..n
each switch => 1 light: off

PROCESS:
=> walk down the row of switches
1. toggle each one, starting from 1, up to n
 === After reaching n, go back to 1
2. toggle switches 2, 4, 6 and so on. ==>  (step 2, starting at 2)
3. toggle switches 3, 6, 9 and so on ==> step 3, starting at 3
4. keep going until n repetition

OUTPUT
1. Array  of (hashes?)lights that are on after n repetition
=end

def lightson(n)
  switches = []
  1.upto(n).each {|i| switches << i }

  (1..(switches.length-1) ).enum_for(:each_cons, 2).map do |i|
    switches[i] = i
    p switches
  end
end

puts lightson(5)

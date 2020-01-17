=begin
Find the stray number 
You are given an odd-length array of integers, in which all of them are the same, except for one single number.
Complete the method which accepts such an array, and returns that single different number.
The input array will always be valid! (odd-length >= 3)
Examples
[1, 1, 2] ==> 2
[17, 17, 3, 17, 17, 17, 17] ==> 3
=end

def stray (numbers)
  #numbers.detect { |n| numbers.count(n).odd? }
  dots = numbers.each { |v| result ^= v }
end

puts stray([1, 1, 2])
puts stray([17, 17, 17, 17, 17, 1, 17])
puts stray([1, 1, 1, 1, 8, 8, 8, 1, 1, 9,9, 1, 1, 1, 1 ])
# =>  2
=begin ############################################# OTHERS SOLUTIONS 
def stray(arr)
  arr.each { |x| return x if arr.count(x) == 1}
end
----------------------------------------------------------------------
def stray (numbers)
  numbers.reduce(&:^)
end
----------------------------------------------------------------------
def stray (numbers)
  numbers.each do |i|
    if numbers.index(i) == numbers.rindex(i)
      return i
    end
  end
end
----------------------------------------------------------------------
def stray(numbers)
    result = 0
    numbers.each { |v| result ^= v }
    return result
end
----------------------------------------------------------------------
def stray (numbers)
  numbers.select { |n| numbers.count(n) == 1 }.last
end
----------------------------------------------------------------------
def stray (numbers)
  numbers.sort!
  if numbers[0] == numbers[1] 
    return numbers[-1]
  else
    return numbers[0]
  end
end
----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

=end


=begin THRASH CAN ****************************************************
=end

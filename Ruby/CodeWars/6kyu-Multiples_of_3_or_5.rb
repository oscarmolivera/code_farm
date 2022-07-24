=begin 
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
  The sum of these multiples is 23.
  Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number
  passed in. Additionally, if the number is negative, return 0 (for languages that do have them).
  Note: If the number is a multiple of both 3 and 5, only count it once.
=end

def test(top)
  #[1, 2, 3, 4, 5, 6, 7, 8, 9].each do |num|
  ##  if num % 3 == 0 || num % 5 == 0
  #    sum << num
  ##  end
  #end
  #sum.reduce
  (1...top).select{|num| num % 3 == 0 || num % 5 == 0}.reduce(&:+)
end

    p test(10)
    # => 23
    p test(20)
    # => 78
    p test(200)
    # => 9168

=begin ############################################# OTHERS SOLUTIONS 
2)
def solution(number)
  (1...number).select{|n| (n % 5).zero? || (n % 3).zero?}.reduce(:+)
end
----------------------------------------------------------------------
3)

----------------------------------------------------------------------
4)

----------------------------------------------------------------------
5)

----------------------------------------------------------------------
6)

----------------------------------------------------------------------
7)

----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
=begin 
 Grasshopper - Summation
 Write a program that finds the summation of every number from 1 to num. 
 The number will always be a positive integer greater than 0.
=end

def summation(num)
  (0..num).each.reduce(:+)
end

p summation(1)
# => 1
p summation(8)
# => 36

=begin ############################################# OTHERS SOLUTIONS 
2)
def summation(num)
  (1..num).reduce(:+)
end
----------------------------------------------------------------------
3)
def summation(num)
  (1..num).inject(:+)
end
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
=begin
Beginner Series #3 Sum of Numbers 
Given two integers a and b, which can be positive or negative, 
find the sum of all the numbers between including them too and 
return it. If the two numbers are equal return a or b.

Note: a and b are not ordered!
Examples

get_sum(1, 0) == 1   # 1 + 0 = 1
get_sum(1, 2) == 3   # 1 + 2 = 3
get_sum(0, 1) == 1   # 0 + 1 = 1
get_sum(1, 1) == 1   # 1 Since both are same
get_sum(-1, 0) == -1 # -1 + 0 = -1
get_sum(-1, 2) == 2  # -1 + 0 + 1 + 2 = 2
=end

def get_sum(a,b)
  (a < b) ? (a..b).reduce(:+) : (b..a).reduce(:+)  
end
puts get_sum(0,1)
# =>1
puts get_sum(0,-1)
# =>-1
puts get_sum(1,2)
# =>3
puts get_sum(5,-1)
# =>14

=begin ############################################# OTHERS SOLUTIONS 

----------------------------------------------------------------------
def get_sum(a,b)
  (a..b).reduce(:+) || (b..a).reduce(:+)
end
----------------------------------------------------------------------
def get_sum(a,b)
  Range.new(*[a, b].sort).reduce(:+)
end
----------------------------------------------------------------------
def get_sum(a,b)
  c, d = [a, b].sort
  (c..d).inject(:+)
end
----------------------------------------------------------------------
def get_sum(a,b)
  (a + b) / 2.0 * ((a - b).abs + 1)
end
----------------------------------------------------------------------
def get_sum(a,b)
  smaller, higher = [a, b].sort
  (smaller..higher).sum
end
----------------------------------------------------------------------
def get_sum(*args)
  (args.min..args.max).reduce(0, &:+)
end
----------------------------------------------------------------------
def get_sum(a,b)
  ([a,b].minmax.first..[a,b].minmax.last).step(1).to_a.reduce(:+)
end
----------------------------------------------------------------------
def get_sum(a,b)
  a, b = [a, b].sort
  a.upto(b).sum
end
----------------------------------------------------------------------
def get_sum(a,b)
  array = a > b ? Array(b..a) : Array(a..b)
  array.inject(&:+)
end
----------------------------------------------------------------------

=end

=begin THRASH CAN ****************************************************
=end
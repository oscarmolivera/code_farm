=begin 
Given a string s of uppercase letters, your task is to determine how many strings t (also uppercase) 
with length equal to that of s satisfy the followng conditions:

    · t is lexicographical larger than s, and
    · Wwhen you write both s and t in reverse order, t is still lexicographical larger than s.

For example:
solve('XYZ') = 5. They are: YYZ, ZYZ, XZZ, YZZ, ZZZ

String lengths are less than 5000. Return you answer modulo 10^9+7 (= 1000000007).

More examples in test cases. Good luck!

=end

def solve s
  #s.split('').permutation.map &:join
  permutations = s.split('').repeated_combination(s.length).map &:join
  #high = permutations.map.with_index {|n, i| permutations.select{ |m| n > m && n.reverse > m.reverse}}
end 
p solve ("XYZ")
#  p solve("XYZ")
  # => ,5
#  p solve("ABC")
  # => ,16174 
#  p solve("ABCD")
  # => ,402230
#  p solve("ZAZ")
  # => ,25
#  p solve("XYZA")
  # => ,34480


=begin ############################################# OTHERS SOLUTIONS 
2)

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
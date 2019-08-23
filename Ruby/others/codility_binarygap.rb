=begin 
A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones 
at both ends in the binary representation of N.
For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has
binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 
20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 
1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.

Write a function: that, given a positive integer N, returns the length of its longest binary gap. The function 
should return 0 if N doesn't contain a binary gap.
For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and 
so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary 
representation '100000' and thus no binary gaps.
Write an efficient algorithm for the following assumptions:
        N is an integer within the range [1..2,147,483,647].
=end

def test(n)
  #puts "num:#{n} // bin:#{n.to_s(2)}"
  elem = (n.to_s(2).gsub(/^[^1]+|[^1]+$/,"").scan /[^1]+/).max
  elem.nil? ? 0 : elem.size
end
puts test(1041)
puts test(15)
puts test(32)
n=1,
n=5=101_2 and 
n=2147483647
n=6=110_2 and 
n=328=101001000_2
n=5=101_2, 
n=16=2**4 and 
n=1024=2**10
n=9=1001_2 and 
n=11=1011_2

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
def solution(n)

end
------------------------------------------

  arr = []
  puts n.to_s(2)
  n.to_s(2).match(/(?<=1)[0]+(?=1)/){|p| arr << p}
  puts arr
  puts "-------------------"
=end
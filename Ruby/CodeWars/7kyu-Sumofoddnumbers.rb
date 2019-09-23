=begin 
Given the triangle of consecutive odd numbers:
1                   1
2                3     5
3             7     9     11
4         13    15    17     19
5      21    23    25    27    29
6   31    33    35    37    39    41
7 43   45    47    49    51    53    55
...
Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

row_sum_odd_numbers(1); # 1
row_sum_odd_numbers(2); # 3 + 5 = 8
=end

def row_sum_odd_numbers(n)
# (1..n).map{|k| ((n**2)-(n-1)) +(k*2)-2}.reduce(&:+)
n**3
end
puts row_sum_odd_numbers(1)
# => 1
puts row_sum_odd_numbers(2)
# => 8
puts row_sum_odd_numbers(3)
# => 27
puts row_sum_odd_numbers(4)
# => 64
puts row_sum_odd_numbers(5)
# => 125
puts row_sum_odd_numbers(6)
# => 216
puts row_sum_odd_numbers(13)
# => 2197
puts row_sum_odd_numbers(19)
# => 6859
puts row_sum_odd_numbers(41)
# => 68921

=begin ############################################# OTHERS SOLUTIONS 
2)
def row_sum_odd_numbers(n)
  n**3
end
----------------------------------------------------------------------
3)
def row_sum_odd_numbers(n)
   start = n * n - n + 1 
  finish = start + 2 * n
  (start...finish).step(2).reduce(:+)
end
----------------------------------------------------------------------
4)
def row_sum_odd_numbers(n)
  (1+(n-1)*n).step(by: 2).take(n).sum
end
----------------------------------------------------------------------
5)
((n*(n-1)+1)..(n**2 + n - 1)).select(&:odd?).inject(0, :+)
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
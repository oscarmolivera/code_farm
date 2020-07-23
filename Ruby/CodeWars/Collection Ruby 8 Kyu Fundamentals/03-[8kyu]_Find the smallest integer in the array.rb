=begin 
 Find the smallest integer in the array
 Given an array of integers your solution should find the smallest integer.
=end

def find_smallest_int(arr)
  arr.min
end

p find_smallest_int([78, 56, 232, 12, 8])
# => 8
p find_smallest_int([78, 56, -2, 12, 8])
# => -2
p find_smallest_int([-78, 56, -2, 12, 8])
# => -78
p find_smallest_int([-8])
# => -8
p find_smallest_int([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
# => 1
p find_smallest_int([-1, -2, -3, -4, -5, -6, -7, -8, -9, -10])
# => -10
p find_smallest_int([-78, 56, 232, 12, 8])
# => -78
p find_smallest_int([78, 56, -2, 12, -8])
# => -8
p find_smallest_int([-8, -3])
# => -8
p find_smallest_int([-3, -8])
# => -8

=begin ############################################# OTHERS SOLUTIONS 
2)
def find_smallest_int(arr)
  arr.sort.take(1)[0]
end
----------------------------------------------------------------------
3)
def find_smallest_int(arr)
  arr.map { |x| Enteger(x) rescue x }.compact.min
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
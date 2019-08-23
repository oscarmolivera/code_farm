=begin 
Find the smallest integer in the array
Given an array of integers your solution should find the smallest integer.
For example:

    Given [34, 15, 88, 2] your solution will return 2
    Given [34, -345, -1, 100] your solution will return -345

You can assume, for the purpose of this kata, that the supplied array will not be empty.
=end

def find_smallest_int(arr)
  small = arr[0]
  arr.each do |x|
    if x < small
      small = x
    end
  end
  small
end

puts find_smallest_int([78,56,232,12,8])
# => 8
puts find_smallest_int([78,56,-2,12,8])
# => -2
puts find_smallest_int([-78,56,-2,12,8])
# => -78
puts find_smallest_int([-8])
# => -8
puts find_smallest_int([1,2,3,4,5,6,7,8,9,10])
# => 1
puts find_smallest_int([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10])
# => -10
puts find_smallest_int([-78,56,232,12,8])
# => -78
puts find_smallest_int([78,56,-2,12,-8])
# => -8
puts find_smallest_int([-8,-3])
# => -8
puts find_smallest_int([-3,-8])
# => -8

=begin ############################################# OTHERS SOLUTIONS 
def find_smallest_int(arr)
  #take array and sort it by low to high 
  #grab index 0 < that will be the lowest
  arr.sort.take(1)[0]
end
----------------------------------------------------------------------
def find_smallest_int(arr) arr.min end
----------------------------------------------------------------------
def find_smallest_int(arr)
  arr.sort!
  arr[0]
end
----------------------------------------------------------------------
=end
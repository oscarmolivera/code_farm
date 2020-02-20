=begin 
Given a 6X6 Array arr:
1 1 1 0,0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0

We define an hourglass in 'A' to be a subset of values with indices 
falling in this pattern in arr's graphical representation:
a b c
  d
e f g
There are 16 hourglasses in arr, and an hourglass sum is the sum of an 
hourglass' values. Calculate the hourglass sum for every hourglass 
in arr, then print the maximum hourglass sum.

=end

def hourglassSum(arr)
  numbers=[]
  (0..arr.length()-3).each do |row|
    (0..arr.length()-3).each do |col|
      sum = arr[row][col] + arr[row][col+1] +arr[row][col+2] 
      sum += arr[row+1][col+1]
      sum += arr[row+2][col] + arr[row+2][col+1] + arr[row+2][col+2]
      numbers << sum
    end
  end
  numbers.max()
end
=begin
-9,-9,-9, 1, 1, 1
 0,-9, 0, 4, 3, 2
-9,-9,-9, 1, 2, 3
 0, 0, 8, 6, 6, 0
 0, 0, 0,-2, 0, 0
 0, 0, 1, 2, 4, 0
=end
p hourglassSum([[-9,-9,-9,1,1,1], [0,-9,0,4,3,2], [-9,-9,-9,1,2,3], [0,0,8,6,6,0], [0,0,0,-2,0,0], [0,0,1,2,4,0]])
p hourglassSum([[1,1,1,0,0,0],[0,1,0,0,0,0],[1,1,1,0,0,0],[0,0,2,4,4,0],[0,0,0,2,0,0],[0,0,1,2,4,0]])
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
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
  #total = []
  #total << [arr[0][0], arr[0][1], arr[0][2], arr[1][1], arr[2][0], arr[2][1], arr[2][2]].reduce(:+)
  #total << [arr[0][1], arr[0][2], arr[0][3], arr[1][2], arr[2][1], arr[2][2], arr[2][3]].reduce(:+)
  #total << [arr[0][2], arr[0][3], arr[0][4], arr[1][3], arr[2][2], arr[2][3], arr[2][4]].reduce(:+)
  #total << [arr[0][3], arr[0][4], arr[0][5], arr[1][4], arr[2][3], arr[2][4], arr[2][5]].reduce(:+)
  #total.reduce(:+)
  #arr.each.with_index do |ar, aix|
  # arr.each.with_index do |it, ix|
  #  p "arr[#{aix}][#{ix}]"
  # end
  #end
  --------------------------------------------------------------------------------------------------
=end
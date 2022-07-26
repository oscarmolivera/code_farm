=begin 
 Counting sheep...
 Consider an array/list of sheep where some sheep may be missing from
 their place. We need a function that counts the number of sheep present
 in the array (true means present).
=end
array1 = [true,  true,  true,  false,
          true,  true,  true,  true,
          true,  false, true,  false,
          true,  false, false, true,
          true,  true,  true,  true,
          false, false, true,  true]

def countSheeps(array)
  array.count(true)
end

p countSheeps(array1)
# => 'test ouput'

=begin ############################################# OTHERS SOLUTIONS 
2)
def countSheeps array
    array.count { |x| x == true }
end
----------------------------------------------------------------------
3)
def countSheeps(array)
  array.count(&:itself)
end
----------------------------------------------------------------------
4)
def countSheeps array
    array.reject(&:!).length
end
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
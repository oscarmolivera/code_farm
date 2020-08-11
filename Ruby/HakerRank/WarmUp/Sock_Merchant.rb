=begin 
John works at a clothing store. He has a large pile of socks that he must pair
by color for sale. Given an array of integers representing the color of each
sock, determine how many pairs of socks with matching colors there are.

For example, there are socks with colors'10' and '20'. There is one pair of
color '10' and one of color '20'. There are three odd socks left, one of each
color. The number of pairs is.

Function Description
Complete the sockMerchant function in the editor below. It must return an
integer representing the number of matching pairs of socks that are
available.

sockMerchant has the following parameter(s):

    n: the number of socks in the pile
    ar: the colors of each sock

=end

def sockMerchant(n, ar)
  pairs = []
  ar.uniq.each do |color|
    pairs << (ar.select{|type| type == color}.count().to_f / 2).to_i
  end
  pairs.reduce(:+)
end

p sockMerchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])
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
=end
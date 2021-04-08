=begin 
Emma is playing a new game that starts with consecutively numbered clouds. Some
of the clouds are thunderheads and others are cumulus. She can jump on any
cumulus cloud having a number that is equal to the number of the current cloud
plus 1 or 2. She must avoid the thunderheads. Determine the minimum number of
jumps it will take Emma to jump from her starting postion to the last cloud. It
is always possible to win the game.

For each game, Emma will get an array of clouds numbered 0 if they are safe or 1
if they must be avoided. For example, c = [ 0,1,0,0,0,1,0 ] indexed from 0 to 6.
The number on each cloud is its index in the list so she must avoid the clouds
at indexes 1 and 5. She could follow the following two paths: 0-> 2-> 4-> 6 or
0-> 2-> 3-> 4-> 6. The first path takes 3 jumps while the second takes 4.

Function Description
Complete the jumpingOnClouds function in the editor below. It should return the
minimum number of jumps required, as an integer.

=end

def jumpingOnClouds(c)
  c.join('').count('1') +  c.join('').scan(/(00)/).size() 
end

p jumpingOnClouds([0, 0, 1, 0, 0, 1, 0])
# => 4
p jumpingOnClouds([0, 0, 0, 0, 1, 0])
# => 3
p jumpingOnClouds([0, 0, 1, 0, 0, 0, 0, 1, 0, 0])
# => 6
p jumpingOnClouds([0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0])
# => 28
p jumpingOnClouds([0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0])
#=> 53
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
  #c.join('').count('0') / 2  + c.join('').count('1') 
  #arr.map.with_index{|j, ind| ind if j == 0}.count() 
  #c.join('').scan(/(010)/).size() +  c.join('').scan(/(00)/).size() + c.join('').scan(/(00000)/).size() + c.join('').scan(/(000000)/).size()
  #c.join('').gsub(/10/, '').size()
=end
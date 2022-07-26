=begin 
Write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
the string should start with a 1.
a string with size 6 should return :'101010'.
with size 4 should return : '1010'.
with size 12 should return : '101010101010'.
The size will always be positive and will only use whole numbers.
=end

def stringy(size)
  (1..size).map{'10'}.join('').slice(0..size-1)
  (1..times).map{ |cont|  cont.odd? ? '1' : '0'}.join
end

puts stringy(0)

puts stringy(3)
#=> '101', 'Wrong result when size is 3')
puts stringy(5)
#=> '10101', 'Wrong result when size is 5')
puts stringy(12)
#=> '101010101010', 'Wrong result when size is 12')
puts stringy(26)
#=> '10101010101010101010101010', 'Wrong result when size is 26')
puts stringy(28)
#=> '1010101010101010101010101010', 'Wrong result when size is 28')

=begin ############################################# OTHERS SOLUTIONS 
2)
def stringy(size)
  (1..size).map { |i| i.even? ? '0' : '1' }.join('')
end
----------------------------------------------------------------------
3)
def stringy(size)
  "10" * (size / 2) + "1" * (size % 2)
end
----------------------------------------------------------------------
4)
def stringy(size)
  ('10'*size)[0,size]
end
----------------------------------------------------------------------
5)
def stringy(size)
  [1,0].cycle.take(size).join
end
----------------------------------------------------------------------
6)
def stringy(size)
  (1..size).map { |i| i % 2 }.join
end
----------------------------------------------------------------------
7)
def stringy(size)
  "10" * (size / 2) + "1" * (size % 2)
end

----------------------------------------------------------------------
8)
def stringy(size)
  ('10'*size)[0,size]
end
----------------------------------------------------------------------
9)
arr=[]
  size > 0 ? (0..size).map { |k| arr << '10'}.join('')[0..size-1] : ''

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
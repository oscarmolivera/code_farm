
def string_incrementer(value)
  if value.match(/(\d+$)/)
    puts value.scan(/\d+$/)
    
  else
    puts "notok"
  end
end

puts string_incrementer('foobar001')
# => foobar002
puts string_incrementer('foobar1')
# => foobar2
puts string_incrementer('foobar00')
# => foobar01
puts string_incrementer('foobar99')
# => foobar100
puts string_incrementer('f00bar')
# => f00bar1
puts string_incrementer('f00b4r')
# => f00b4r1
puts string_incrementer('foobar000')
# => foobar001
puts string_incrementer('foobar999')
# => foobar1000
puts string_incrementer('foobar0999')
# => foobar01000
puts string_incrementer('foobar001')
# => foobar002
puts string_incrementer('foobar1')
# => foobar2
puts string_incrementer('f0')
# => f1
puts string_incrementer('fB')
# => fB1

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
=begin 
  Fake Binary
  Given a string of digits, you should replace any digit below 5 with '0'
   and any digit 5 and above with '1'. Return the resulting string.
=end

def fake_bin(s)
  s.chars.map {|c| c.to_i<5 ? '0' : '1'}.join
end

p fake_bin('45385593107843568')
# => '01011110001100111'
p fake_bin('509321967506747')
# => '101000111101101')
p fake_bin('366058562030849490134388085')
# => '011011110000101010000011011'

=begin ############################################# OTHERS SOLUTIONS 
2)
def fake_bin(s)
  s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
end
----------------------------------------------------------------------
3)
def fake_bin(str)
  str.split('').map{ |x| x.to_i < 5 ? 0 : 1 }.join
end
----------------------------------------------------------------------
4)
def fake_bin(s)
  s.tr('1-9', '00001')
end
It uses the .tr method which replaces single characters with what's 
instructed behind the comma. Since the range 1-9 (which is shorthand
for 123456789) is longer than the string 00001, everything after 5
(which is replaced by 1) gets replaced by the last character, which is
1. It's basically an efficient way of writing s.tr('123456789', 
'000011111').
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
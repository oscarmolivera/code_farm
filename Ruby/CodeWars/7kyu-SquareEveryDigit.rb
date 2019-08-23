=begin
Square Every Digit
Welcome. In this kata, you are asked to square every digit of a number.
For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
Note: The function accepts an integer and returns an integer
=end
def square_digits num
  var = (num.to_s).each_char.map{|n| (n.to_i**2).to_s}
  var.join('')
end

=begin ############################################# OTHERS SOLUTIONS 
---------------------------------------------------------------------
def square_digits num
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end
---------------------------------------------------------------------
def square_digits num
  num.to_s.gsub(/\d/) {|d| d.to_i**2}.to_i
end
---------------------------------------------------------------------
def square_digits num
  var = ""
  (num.to_s).each_char do |n|
  var << (n.to_i**2).to_s
  end
  var.to_i
end 
---------------------------------------------------------------------
def square_digits num
  num.to_s.gsub(/\d/) {|d| d.to_i**2}.to_i
end
---------------------------------------------------------------------
def square_digits num
  num.digits.reverse.map{|m| m**2}.join.to_i
end
---------------------------------------------------------------------
def square_digits num
  num.digits.map { |d| d*d } .reverse.join.to_i
end
=end

puts square_digits(3212)
# => 9414
puts square_digits(2112)
# => 4114
puts square_digits(1111)
# => 1111
puts square_digits(1234321)
# => 14916941
puts square_digits(0)
# => 0
 
################################
##Write a Ruby program which accept the radius of a circle from the user and compute the parameter and area.
##Sample Output:
##Input the radius of the circle: The perimeter is 31.41592653.
##The area is 78.539816325
################################
ARGV.clear
STDOUT.flush

class Circle

  def initialize(size)
    @radius_size = size.to_i
  end

  def valid?
    return true  if @radius_size.to_i > 0
  end

  def perimeter
    2 * 3.14159265359 * @radius_size
  end

  def area
    3.14159265359 * (@radius_size ** 2)
  end
end

puts "===================== Ruby Exercises ========================="
puts "............ Radius and Perimeter of a Circle ................"
puts "\n"
puts "Input the radius of the circle:"
userInput = gets.chomp.downcase.to_f
circle = Circle.new(userInput)
if circle.valid?
    puts "The perimeter is #{circle.perimeter}."
    puts "The area is #{circle.area}."
else
  puts "\n"
  puts "#=> Try again! (Please type a valid number to calculate it's diameter and per)"
end

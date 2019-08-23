=begin
 Volume of a Cuboid
  Bob needs a fast way to calculate the volume of a cuboid with three values: 
  length, width and the height of the cuboid. Write a function to help Bob with this calculation.  
=end

def get_volume_of_cuboid(length, width, height)
  length*width*height
end

puts get_volume_of_cuboid(2, 3, 4)
# => 24
puts get_volume_of_cuboid(4, 6, 8)
# => 192
puts get_volume_of_cuboid(7, 14, 26)
# => 2548

=begin ############################################# OTHERS SOLUTIONS 
def get_volume_of_cuboid(*dimensions)
  dimensions.inject(:*)
end
----------------------------------------------------------------------
def get_volume_of_cuboid(*dimensions)
  dimensions.reduce(&:*)
end

=end
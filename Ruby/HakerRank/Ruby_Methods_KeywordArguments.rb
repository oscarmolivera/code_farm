=begin 

=end

def convert_temp(temp, input_scale:, output_scale: 'Celsius')
  case input_scale.downcase
  when 'fahrenheit'
    return output_scale == 'kelvin' ? 
    ((temp - 32) / 1.8) + 273.15 : (temp - 32) / 1.8
  when 'celsius'
    return output_scale == 'kelvin' ? 
    temp + 273.15 : (temp * 1.8) + 32
  when 'kelvin'
    return output_scale == 'celsius' ? 
    temp - 273.15 : (temp - 273.15) * 1.8
  end
end


puts convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
# => 273.15
puts convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
# => 32
puts convert_temp(0, input_scale: 'kelvin', output_scale: 'celsius')
# => -273.15
puts convert_temp(0, input_scale: 'kelvin', output_scale: 'fahrenheit')
# => -459.67
puts convert_temp(0, input_scale: 'fahrenheit', output_scale: 'kelvin')
# => 255.372
puts convert_temp(0, input_scale: 'fahrenheit', output_scale: 'celsius')
# => -17.778
=begin ############################################# OTHERS SOLUTIONS 
2)

case options[:output_scale]
  when 'kelvin'
    temp + 273.15
  when 'fahrenheit'
    temp + 32
  else
    temp
  end
----------------------------------------------------------------------
3)
  grades = 0
  case input_scale
    when 'celsius'
      grades = (temp − 32) × 5/9 if options[:output_scale] == 
      grades = (temp − 32) × 5/9 if options[:output_scale] == 'celsius'
    when 'kelvin'
      grades = (temp − 32) × 5/9 if options[:output_scale] == 'celsius'
      grades = (temp − 32) × 5/9 if options[:output_scale] == 'celsius'
    when 'fahrenheit'
      grades = (temp − 32) * 5/9 if options[:output_scale] == 'celsius'
      grades = (temp − 32) * 5/9 + 273.15 if options[:output_scale] == 'kelvin'
  end
  grades
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
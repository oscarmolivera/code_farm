def count_occurrences(vehicles)
  vehicles_hash = Hash.new(0)
  vehicles.each {|unit| vehicles_hash[unit] += 1}
  vehicles_hash.each {|key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'Camioneta'
]

count_occurrences(vehicles)

def is_odd?(number)
  # return 'true' if number == 1
  number % 2 == 0 ? 'false' : 'true'
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
puts is_odd?(1)    # => true
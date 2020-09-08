def prime?(val)
  return false if [0, 1].include?(val)
  (2...val).none? { |num| val % num == 0}
end

puts prime?()
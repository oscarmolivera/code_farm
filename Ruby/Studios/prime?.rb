# copiado de otro programador
def prime?(val)
  return false if [0, 1].include?(val)
  (2...val).none? { |num| val % num == 0}
end

puts prime?()

# Mio
# fermat primary test
def prime?(num)
  return false if num <= 1 
  (1..num-1).each {|n| return false if (((n**num)-num)%num == 0) }
  true
end

p prime?(1) # => false
p prime?(2) # => true
p prime?(5) # => true
p prime?(7) # => true
p prime?(18) # => false
p prime?(97) # => true
p prime?(171) # => false
=begin
  Multiply the number
  Jack really likes his number five: the trick here is that you have to multiply 
  each number by 5 raised to the number of digits of each numbers, so, for example:

  multiply(3)==15
  multiply(10)==250
  multiply(200)==25000
  multiply(0)==0
  multiply(-3)==-15
=end

def multiply(n)
  #(5**(n.match(/\d+/)).length)
  n*(5**(n.to_s).match(/\d+/).to_s.length)
  
end


puts multiply(10)
# => ,250
puts multiply(5)
# => ,25
puts multiply(200)
# => ,25000
puts multiply(0)
# => ,0
puts multiply(-2)
# => ,-10


=begin ############################################# OTHERS SOLUTIONS 
def multiply(n)
  5 ** n.abs.to_s.length * n
end

def multiply(n) n*5**n.abs.to_s.length end

def multiply(n)
  n*(5**n.to_s.gsub('-','').length)
end

def multiply(n)
  n > 0 ? x = n.to_s.length : x = n.to_s.length - 1
  n * (5**x)
end

def multiply(n)
  digits = n.abs.to_s.length
  n*(5**digits)
end

def multiply(n)
  n*(5**(n.to_s).match(/\d+/).to_s.length)
end

=end


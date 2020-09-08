=begin 

=end

def take(arr, len = 1)
  len.times { arr.shift }
  arr
end

take([1,2,3], 1).to_s
# => [2, 3]
take([1,2,3], 2).to_s
# => [3]
take([1,2,3]).to_s
# => [2, 3]

def area(l, b)
  -> { l * b } 
end

x = 10.0; y = 20.0

area_rectangle = area(x, y).()
area_triangle = 0.5 * area(x, y).()

# Write a lambda which takes an integer and square it
square      = ->(a) { a**2 }

# Write a lambda which takes an integer and increment it by 1
plus_one    = ->(b) { b + 1 }

# Write a lambda which takes an integer and multiply it by 2
into_2      = ->(c) { c * 2 }

# Write a lambda which takes two integers and adds them
adder       = ->(d, e) { d + e }

# Write a lambda which takes a hash and returns an array of hash values
values_only = lambda(f) do
                f.each do |k, v|
                  
                end
              end
end


input_number_1 = 1
input_number_2 = 2
input_hash = {a: 1, b: 2}

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e
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
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
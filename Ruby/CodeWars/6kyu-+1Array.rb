=begin 
+1 Array
Given an array of integers of any length, return an array that has 1 added to the value
represented by the array.

The array can't be empty Only non-negative, single digit integers are allowed

Return nil (or your language's equivalent) for invalid inputs.
Examples

For example the array [2, 3, 9] equals 239, adding one would return
the array [2, 4, 0].

[4, 3, 2, 5] would return [4, 3, 2, 6]
=end


def up_array(arr)
  return nil unless arr.select{|i| i<0}.empty?
  return nil if arr.size.zero?
  return nil unless arr.uniq.map{|t| [t > 9]}.map{|i| i.select{|x| x == true}.size}.reduce(:+).zero?
   arr.join('').succ.split(/(\d)/).select {|n| n!=''}.map{|n| n.to_i}
end

def other_try(arr)
  #arr.join.succ.to_s.split("").map(&:to_i)
  #(Integer(arr.join) + 1).to_s.split("").map(&:to_i)
  arr.all? 
end

p up_array([2, 3, 9]) # => [2, 4, 0]
p up_array([4, 3, 2, 5]) # => [4, 3, 2, 6]
p up_array([1, -9]) # => nil
p up_array([1, 2, 34]) # => nil
p up_array([0, 1]) # => [0, 2]
p up_array([]) # => nil

p other_try([4, 3, 2, 5])
p other_try([])

=begin ############################################# OTHERS SOLUTIONS 
2)
def up_array(arr)
  arr.all? { |x| x >= 0 && x < 10 } && arr != [] ? (arr.join("").to_i + 1).to_s.split("").map { |int| int.to_i } : nil
end
----------------------------------------------------------------------
3)
def up_array(arr)
  return nil if arr.empty? || arr.any? { |x| x < 0 || x > 9 }
  arr.join.next.chars.map(&:to_i)
end
----------------------------------------------------------------------
4) !Mio!
def up_array(array)
  array.join().size < 1 || array.join().size != array.size ? nil :  array.join().succ.chars.map{ |char| char.to_i}
end

----------------------------------------------------------------------
5)

----------------------------------------------------------------------
6)
# Adds 1 to an Array of Integers
# once they are joined
def up_array(array)
  return nil if nil_conditions_met?(array)
  result = Integer(array.join) + 1
  result = result.to_s.split("").map(&:to_i)
end

# Elements must meet this conditions
def nil_conditions_met?(array)
  array.empty? || non_integers?(array) || elements_wrong_size?(array)
end

# Elements must all be integers
def non_integers?(array)
  array.any? { |e| !e.is_a?(Integer) }
end

# Elements must be within 0..10
def elements_wrong_size?(array)
  array.any? { |e| e > 9 || e < 0 }
end
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
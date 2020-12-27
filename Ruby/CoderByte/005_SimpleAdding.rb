=begin
  Challenge
Have the function SimpleAdding(num) add up all the numbers from 1 to num. For example: if the input is 4 then your program should return 10 because 1 + 2 + 3 + 4 = 10. For the test cases, the parameter num will be any number from 1 to 1000.
Sample Test Cases

Input:12
Output:78

Input:140
Output:9870
  
=end

def SimpleaAdding(n)
  (1..n).reduce(:+)
end

puts SimpleaAdding(8)
puts SimpleaAdding(140)

=begin  ### OTHERS SOLUTIONS

def SimpleAdding(num)
    added = 0
    (1..num).each do |i|
      added += i 
    end
    added
end

def SimpleAdding(num)
    (1..num).inject(:+)
end

def factorial(num)
  # code goes here
  return 1 if num == 1
  return factorial(num-1) * num
end

def FirstFactorial(num)
  factorial = 1
  (1..num).each do |i|
     factorial *= i 
  end
  factorial
end

def FirstFactorial(num)
  factorial = 1
  while num > 1
    factorial *= num
    num -= 1
  end
  return factorial
end

def FirstFactorial2(num)
  (1..num).inject(:*)
end

def FirstFactorial3(num)
  #(1..num).to_a.reverse.reduce(:*)
  puts (1..num).to_a
  (1..num).to_a.reverse
end

puts FirstFactorial3(8)
=begin
9. Write a Ruby program to check three numbers and return true if one or more of them are small. A number is called "small" if it is in the range 1..10 inclusive. Go to the editor
Sample Output:
true
true
false
=end

def smallNumbers(a,b,c)
  if a <11
    puts true
  else
    puts false
  end
  if b <11
    puts true
  else
    puts false
  end
  if c <11
    puts true
  else
    puts false
  end
end

def smallNumbers2(a,b,c)
  arr = []
  arr.push(a)
  arr.push(b)
  arr.push(c)
  arr.each {|n| puts n < 11}
end

def smallNumbers3(a, b, c)
  return ((a >= 1 && a <= 10) || (b >= 1 && b <= 10) || (c >= 1 && c <= 10));	
end

smallNumbers( 1, 11,3)

smallNumbers2( 1, 11,3)

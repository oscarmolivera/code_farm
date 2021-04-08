=begin

Each object in Ruby may have methods associated with it. To demonstrate this, we
want you to print whether a number is even or odd. A number has an "even?"
method associated with it, which returns true or false based on the parity of
the number.

Assuming a variable number is already defined, check whether a given number is
even or not.

Hint
Type in the code-editor
  ```
  return number.even?

or
  ```
  number.even?

Input Format
The first line of input contains an integer n. The next n contains one integer in
each line.

Output Format
The output is handled by the code written in the editor.

=end

def odd_or_even(number)
  number.even?
end

p odd_or_even(5)
# => false
p odd_or_even(2)
# => true
p odd_or_even(4)
# => true
p odd_or_even(3)
# => false
p odd_or_even(5)
# => false
p odd_or_even(8)
# => true

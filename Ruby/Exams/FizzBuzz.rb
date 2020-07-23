=begin 

=end

def fizz_buzz(n)
  (1..n).each do |num|
    output = 'FizzBuzz' if (num % 3).zero? && (num % 5).zero?
    output = 'Fizz' if (num % 3).zero? && num % 5 != 0
    output = 'Buzz' if num % 3 != 0 && (num % 5).zero?
    output = num.to_s if num % 3 != 0 && num % 5 != 0
    puts output.to_s
  end
end


puts fizz_buzz(15)
=begin ############################################# OTHERS SOLUTIONS 
2)
def fizzbuzz(start_num, end_num)
  start_num.upto(end_num) do |n|
  str = ''
  str += 'fizz' i(f n % 3).zero?
  str += 'buzz' if n % 5 == 0
  str += n if str.empty?
  puts str
  en
----------------------------------------------------------------------
3)
def fizzBuzz(n)
  (1..n).each do |num|
    output = 'FizzBuzz' if (num % 3).zero? && (num % 5).zero?
    output = 'Fizz' if (num % 3).zero? && num % 5 != 0
    output = 'Buzz' if num % 3 != 0 && (num % 5).zero?
    output = num.to_s if num % 3 != 0 && num % 5 != 0
    puts output.to_s
  end
end
----------------------------------------------------------------------
4)
require 'active_support/core_ext'
def fizz_buzz(n)
  str = ''
  str += 'Fizz' if (n % 3).zero?
  str += 'Buzz' if (n % 5).zero?
  str += n.to_s if str.blank?
  puts str
end
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

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
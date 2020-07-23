def fizz_buzz(n)
  str = ''
  (1..n).each do |num|
    str += 'Fizz' if (num % 3).zero? 
    str += 'Buzz' if (num % 5).zero? 
    str = num.to_s if !(num % 3).zero? && !(num % 5).zero?
    puts str
    str=''
  end
end

fizz_buzz(15)
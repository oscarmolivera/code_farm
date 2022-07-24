=begin
IS A PRIME?
Create a method that gives us TRUE or FALSE is the number we pass to it
is a prime number
=end

#arr = [2, 3, 4, 5, 6, 7, 8, 9, 13, 14, 455, 61, 27, 8117, 349, 1]

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def is_prime?(arr)
  arr.select do |num|
    (1..num).map{ |n| num % n}.count(0) == 2
  end
end

def prime?(num)
  (1..num).map{ |n| num % n}.count(0) == 2
end

# p is_prime?(arr)

count = 0
for item in arr
  next if item == 1
  count += 1 if prime?(item)
end
# p count


count = 0
for num in arr
  ceros = 0
  (1..num).each do |n|
    next if n == 1
    if num % n == 0
      ceros += 1
    end
  end
  count += 1 if ceros == 2
end

# p count


def how_many_primes(arr)
  total = 0
  for item in arr
    next if item == 1
    is_prime = true
    number = item - 1
    while number > 1
      p "#{item} % #{number} == 0 : #{item % number} => #{item % number == 0}"
      if item % number == 0
        is_prime = false
        break
      else
        number -=1
      end
    end
    if is_prime == true
        total += 1
    end
  end
  total
end


p how_many_primes(arr)

# p 3 % 2

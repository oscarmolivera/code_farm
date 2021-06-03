=begin

One of the most commonly used data structures in Ruby is a Ruby Array, and below
we see various methods of initializing a ruby array.
Your task is to initialize three different variables as explained below.

Initialize an empty array with the variable name array

```
  array = Array.new
  array = []

Initialize an array with exactly one nil element in it with the variable name
array_1

```
  array_1 = Array.new(1)
  array_1 = [nil]

Initialize an array with exactly two elements with value 10 in it using the
variable name array_2.

```
  array_2 = Array.new(2, 10)
  array_2 = [10, 10]


=end

array = Array.new
array_1 = [nil]
array_2 = [10, 10]

p array
# => []
p array_1
# => [nil]
p array_2
# => [10, 10]

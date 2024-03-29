=begin

Here are some other ways to access array objects in Ruby.
To access the elements from the end of the list, we can use negative indices.
For the array,

arr = [9, 5, 1, 2, 3, 4, 0, -1]
```
  > arr[-1]
  => -1

The first element of the array can be accessed using
  > arr.first
  => 9

The last element of the array can be accessed using
  > arr.last
  => -1

The first n elements of the array can be accessed using
  arr.take(3)
  => [9, 5, 1]

Everything but the first n elements of the array can be accessed using
  arr.drop(3)
  => [2, 3, 4, 0, -1]

In this challenge, you have to use the syntax as explained above and complete
the functions accordingly.

=end

arr = [9, 7, 6, 5, 4, 6, 7, 1, 2, 3]

def neg_pos(arr, index)
  # return the element of the array at the position `index` from the end of the
  # list Clue : arr[-index]
  arr[-index]
end

def first_element(arr)
  # return the first element of the array
  # arr.first
  arr.first
end

def last_element(arr)
  # return the last element of the array
  # arr.last
  arr.last
end

def first_n(arr, n)
  # return the first n elements of the array
  arr.take(n)
end

def drop_n(arr, n)
  # drop the first n elements of the array and return the rest
  arr.drop(n)
end
# arr = [9, 7, 6, 5, 4, 6, 7, 1, 2, 3]

p neg_pos(arr, 4)
# => 
p first_element(arr)
# => 9
p last_element(arr)
# => 3
p first_n(arr, 3)
# =>  [9, 7, 6]
p drop_n(arr, 5)
# =>  [6, 7, 1, 2, 3]

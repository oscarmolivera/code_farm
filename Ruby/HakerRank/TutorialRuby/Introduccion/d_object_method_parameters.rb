=begin

A method may take zero or more parameters as input. To demonstrate this, we look
at the asserts we use on HackerRank. Sometimes, we have to check whether a given
number "a" is within the range "b" and "c" (where b <= c, and both inclusive ).

Three variables "a", "b", and "c" are already defined. Your task is to write
code that checks whether "a" is within the range of "b" and "c" by calling the
method range? (which we have defined for you as a method for this example) on
"a" and passing "b" and "c" as arguments.

Hint
  ```
  a.range?(b, c)

or
  ```
  return a.range?(b, c)

or
  ```
  a.range? b, c

or
  ```
  return a.range? b, c

=end

def in_range?(a, b, c)
  (b..c).cover?(a)
end

p in_range?(1, 2, 3)
# => false
p in_range?(2, 1, 3)
# => true
p in_range?(3, 2, 5)
# => true
p in_range?(3, 3, 3)
# => true
p in_range?(1, 2, 5)
# => false

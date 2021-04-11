=begin

This is a wonderful exercise which explains the concept of infinite loops.

"A hacker practices on HackerRank until getting to a rating of O(1) read as
(Oh-one)"

An infinite loop in Ruby is of the form

```
  loop do
  end

Use an infinite loop and call the method coder.practice within it and break if
coder.oh_one? is true. "break" if conditions in Ruby are of the form

```
  if <condition>
    break
  end
or
  break if <condition>

=end
# Tutorial Solution
def method(*params)
  loop do
    coder.practice
    break if coder.oh_one?
  end
end

p method(2, 3)
# => response
p method(2, 3)
# => response
p method(2, 3)
# => response
p method(2, 3)
# => response
p method(2, 3)
# => response

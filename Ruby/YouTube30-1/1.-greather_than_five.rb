# Givin an array print all numbers greather than five

arr = [17, 6, 3, 7, 9, 1]
def five_and_up(arr, num)
  arr.count{ |n| n > 5}
end

p five_and_up(arr, 7)

number = 0
for item in arr
  if item > 5
    number += 1
  end
end

# p number

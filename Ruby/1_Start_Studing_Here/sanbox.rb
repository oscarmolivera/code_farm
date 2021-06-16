def anything(str)
  str
end

anything('data')

arr = [9, 5, 1, 2, 3, 4, 0, -1]
arr[4]
arr.at(4)
arr[1..3]
arr[1...3]
arr[1, 4]
arr.each.with_index do |item, idx|
  p arr[idx..(idx+3)] unless arr[idx..(idx+3)].size < 4
end
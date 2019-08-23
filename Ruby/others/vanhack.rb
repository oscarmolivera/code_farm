arry = [2,3,1]

def findNumber(arr, k)
  item = arr.select{|i| i === k}
  item.empty? ? "NO" : "YES"
end

puts findNumber(arry, 5)
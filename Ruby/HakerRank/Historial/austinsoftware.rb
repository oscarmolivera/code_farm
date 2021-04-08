
def minDiff(arr)
  stack = []
  arr.sort!.each.with_index do |item, index|
    stack.push(item - arr[index + 1]) unless arr[index + 1].nil?
  end
  stack.map{|x| x.abs}.reduce(:+)
end


arr = [5, 1, 3, 7, 3]

# p minDiff(arr)



def compareTriplets(a, b)
  hash = {}
  resp = [0,0]
  (1..a.length).each { |turn| hash[turn] = [a[turn - 1], b[turn - 1]] }
  hash.each_value do |item|
    resp[0] += 1 if item[0] > item[1]
    resp[1] += 1 if item[0] < item[1]
  end
  resp
end

# p compareTriplets([5, 6, 7], [3, 6, 10])
# p compareTriplets([17, 28, 30], [99, 16, 8])

def diagonal_difference(arr)
  ((arr[0][0] + arr[1][1] + arr[2][2]) - (arr[0][2] + arr[1][1] + arr[2][0])).abs
end

p diagonal_difference([[11, 2, 4], [4, 5, 6], [10, 8, -12]])
=begin
John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
For example, there are
socks with colors . There is one pair of color and one of color . There are three odd socks left, one of each color. The number of pairs is.
Function Description
Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
sockMerchant has the following parameter(s):
    n: the number of socks in the pile
    ar: the colors of each sock
Input Format
The first line contains an integer, the number of socks represented in. The second line contains space-separated integers describing the colors of the socks in the pile.

Constraints where Output Format Return the total number of matching pairs of socks that John can sell.
Sample Input
9
10 20 20 10 10 30 50 10 20
Sample Output
3
//////////////////////////////
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
///////////////////////////////////
=end

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  hash = Hash.new(0)
  pares = Array.new
  ar.each{|key| hash[key] += 1}
  #puts hash
  hash.each do |ky, t|
    if t - 1 > 0
      t % 2 == 0 ? pares << t/2 : pares << (t-1)/2
    end
  end
  pares.length > 0 ? "Result: #{pares.reduce(:+)}" : 0
end


#puts sockMerchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])
puts sockMerchant(10, [1, 1, 3, 1, 2, 1, 3, 3, 3, 3])

=begin ############################################# OTHERS SOLUTIONS 
2)
n = gets.to_i
data = gets.strip.split(" ")
count = Hash.new(0)
data.each do |sock|
    count[sock] = count[sock] + 1
end
sum = 0
count.keys.each do |sock|
    sum += count[sock]/2
end
puts sum
----------------------------------------------------------------------
3)
# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.chomp.to_i
c = gets.chomp.split(" ").map(&:to_i)

sock_counts = {}

c.each do |sock|
    if sock_counts[sock]
        sock_counts[sock] += 1
    else
        sock_counts[sock] = 1
    end
end

count = 0
sock_counts.each do |sock, scount|
    count += scount / 2
end

puts count
----------------------------------------------------------------------
4)
n = gets.strip.to_i
c = gets.strip.split.map(&:to_i)
colors = c.uniq
ans = 0
colors.each do |color|
    count = c.count color
    ans += count / 2
end
puts ans
----------------------------------------------------------------------
5)
gets.to_i
puts gets.strip.split(" ").map(&:to_i).group_by {|i|i }.values.reduce(0) {|sum,i| sum + i.length/2}
----------------------------------------------------------------------
6)
# Enter your code here. Read input from STDIN. Print output to STDOUT
n = gets.strip.to_i
c = gets.strip.split.map(&:to_i)

h = Hash.new(0)
c.each { |s| h[s] += 1 }

total = 0
h.each { |k, v| total += v >> 1 }

puts total
----------------------------------------------------------------------
7)
n = gets.to_i
a = gets.split.map(&:to_i)

a.sort!
b = a.uniq

c = b.map do |x|
    a.count(x)
end

c.collect! { |x| x / 2 }

puts c.inject (0) {|a, b| a + b}
----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

=end


=begin /// THRASH

def hashs_agrupa_columnas (arr, col)
    i = 0
    atmp = Array.new
    loop do
      atmp.push(arr[i][col])
      i += 1
      if i == arr.length
        break
      end
    end
    hash = Hash.new(0)
    if arr.present?
      atmp.each{|key| hash[key] += 1}
      hash
    end
  end

=end
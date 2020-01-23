=begin 
Sum of the first nth term of Series
Task:
Your task is to write a function which returns the sum of following series upto nth term(parameter).
Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...

Rules:

    You need to round the answer to 2 decimal places and return it as String.
    If the given value is 0 then it should return 0.00
    You will only be given Natural Numbers as arguments.

Examples:
SeriesSum(1) => 1 = "1.00"
SeriesSum(2) => 1 + 1/4 = "1.25"
SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"
NOTE: In PHP the function is called series_sum().
=end

def series_sum(n)
    # Happy Coding ^_^
    sprintf('%.2f', series(n))
end
  
def series(n)
    return 0 if n ==0
    n == 1  ?  a = 1.0 : a = series(n-1)+(1/(1+(3.0 * (n-1))))
end

=begin ############################################# OTHERS SOLUTIONS 
1)
   return "0.00" if len < 1
    #'%.2f' %  (1..len).map{|g| g < 2 ? 1 : 1.0/(g + (2 * (g-1)))}.reduce(:+)
----------------------------------------------------------------------
2)
def series_sum(n)
  return "0.00" if n == 0
  '%.2f' % (0..n-1).to_a.map { | x | (1.0/(x*3+1))}.reduce(:+)
end
----------------------------------------------------------------------
3)
def series_sum(n)
  return "0.00" if n < 1
  "%.2f" % series.take(n).reduce(:+)
end

def series
  denom = 1.0
  
  Enumerator.new do |y|
    loop do
      y.yield 1 / denom
      denom += 3.0
    end
  end
end
----------------------------------------------------------------------
4)
def series_sum(n)
  denominator = 1
  total = 0
  n.times do 
    total += (1.0/denominator)
    denominator += 3
  end
  "#{format("%.2f", total)}"
end
----------------------------------------------------------------------
5)
def series_sum(n)
  n == 0 ? "0.00" : '%.2f' % (0...n).map {|d| 1.0 / (1 + 3 * d)}.inject(:+)
end
----------------------------------------------------------------------
6)
def series_sum(n)
  '%.2f' % (0...n).inject(0){ |sum, i| sum + 1.0/(1+i*3) }
end
----------------------------------------------------------------------
7)
def series_sum(n)
  '%.2f' % (0...n).sum { |i| 1.0 / (i * 3 + 1) }
end
----------------------------------------------------------------------
8)
def series_sum(n)
  sum = 0.00
  n.times do |i|
    sum += 1.0/((i+1) + i*2)
    puts sum
  end
 "%.2f" % sum
end
----------------------------------------------------------------------
9)
def series_sum(n)
  n == 0 ? "0.00" : '%.2f' % (1..n).map{|x| 1.0/(1+(x-1)*3)}.reduce(:+)
end
----------------------------------------------------------------------
10)
def series_sum(n)
  return "0.00" if n.zero?
  "%.2f" % (1...n).inject(1) { |sum, m| sum + 1.0 / (3 * m + 1) }
end+
=end
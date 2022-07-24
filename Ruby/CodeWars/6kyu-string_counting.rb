=begin 
Given a string s of uppercase letters, your task is to determine how many strings t (also uppercase) with length equal 
to that of s satisfy the followng conditions:

    t is lexicographical larger than s, and
    when you write both s and t in reverse order, t is still lexicographical larger than s.

For examplep solve('XYZ')
 # =>  5. They are: YYZ, ZYZ, XZZ, YZZ, ZZ

String lengths are less than 5000. Return you answer modulo 10^9+7 (= 1000000007).

More examples in test cases. Good luck!

=end

def solve(s)
  s.chars.map{|c| c.ord-'A'.ord}
  #s = s.chars.map{|c| c.ord-'A'.ord}
  #(0...s.size).inject([0,0]) do |(sum,prefix_num), idx|
  #  prefix_num = idx.zero? ? 0 : prefix_num*26+s[idx-1]
  #  [sum + (25-s[idx]) * (26**idx - prefix_num), prefix_num]
  #end.first % 1000000007
end

p solve('XYZ')
# => 5
p solve('ABC')
# => 16174
p solve('ABCD')
# => 402230
p solve('ZAZ')
# => 25
p solve('XYZA')
# => 34480

=begin ############################################# OTHERS SOLUTIONS 
2)
MOD = 1000000007
def solve s
    v = r = 0
    s.chars.each {|c|
      r = (r + ((v + 1) * (90 - c.ord)) % MOD) % MOD
      v = (v * 26 + 90 - c.ord) % MOD
    }
    r
end
----------------------------------------------------------------------
3)
M = 10**9+7

def solve s
  s.chars.map {|c| 90-c.ord}.inject([0,0]) {|(c,d),n| [c*26+n,(c+1)*n+d].map{|s| s%M}}[1]
end

----------------------------------------------------------------------
4p def solve(s)

  # => .each_char.reduce([0, 0]){ |(r, l), c
    m = 'Z'.ord - c.ord
    [r + m + l * m, m + l * 26]
  }[0] % 1000000007
end

----------------------------------------------------------------------
5)
def solve s
    n = s.size; dp, mod, sum = [0]*n, 1000000007, 0
    (n-2).downto(0) do |i| dp[i] = (((dp[i + 1] * 26) % mod) + ('Z'.ord - s[i + 1].ord) % mod) % mod end
    (0...n).each{|i| sum += ((dp[i] + 1) * ('Z'.ord - s[i].ord)) % mod; sum %= mod}
    sum
end
----------------------------------------------------------------------
6)

----------------------------------------------------------------------
7)

----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
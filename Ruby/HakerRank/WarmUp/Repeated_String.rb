=begin 
Lilah has a string, 's', of lowercase English letters that she repeated infinitely many times.
Given an integer, 'n', find and print the number of letter a's in the first letters of Lilah's 
infinite string.

For example, if the string s = 'abcac' and, n = 10 the substring we consider is abcacabcac, 
the first characters of her infinite string. There are 4 occurrences of a in the substring.

Function Description
Complete the repeatedString function in the editor below. It should return an integer representing 
the number of occurrences of a in the prefix of length in the infinitely repeating string.

repeatedString has the following parameter(s):

    s: a string to repeat
    n: the number of characters to consider

=end

def repeatedString(str, n) 
 str.count('a') * (n / str.size()) + str.slice(0,(n % str.size())).count('a')
end

p repeatedString('aba', 10)
#p repeatedString('a', 1000000000000) 
p repeatedString('jdiacikk', 899491)
# => 112436
p repeatedString('kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm', 736778906400)
# => 
=begin ############################################# OTHERS SOLUTIONS 
2)

----------------------------------------------------------------------
3)

----------------------------------------------------------------------
4)

----------------------------------------------------------------------
5)

----------------------------------------------------------------------
6)

----------------------------------------------------------------------
7)

----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
=begin
Given a string of lowercase letters in the range ascii[a-z],
determine a character that can be removed to make the string
a palindrome. There may be more than one solution, but any
will do. For example, if your string is "bcbc", you can either
remove 'b' at index or 'c' at index . If the word is already a
palindrome or there is no solution, return -1. Otherwise,
return the index of a character to remove.

Function Description
Complete the palindromeIndex function in the editor below.
It must return the index of the character to remove or
palindromeIndex has the following parameter(s):
    s: a string to analyze
Input Format
The first line contains an integer , the number of queries.
Each of the next lines contains a query string .
Constraints
    All characters are in the range ascii[a-z].
Output Format
Print an integer denoting the zero-indexed position of the
character to remove to make a palindrome. If is already a
palindrome or no such character exists, print
Sample Input
3
aaab
baa
aaa
Sample Output
3
0
-1
Explanation
Query 1: "aaab"
Removing 'b' at index results in a palindrome, so we print on a new line.
Query 2: "baa"
Removing 'b' at index results in a palindrome, so we print on a new line.
Query 3: "aaa"
This string is already a palindrome, so we print . Removing any one of the
characters would result in a palindrome, but this test comes first
Provide Custom Input here
=end


def palindromeIndex(str)
  contador = 0
  return -1 if palindrome?(str)
  value = 0
  (1..str.size).each.with_index do |caracter, index|
    test = str.split('').select.with_index{|b, inx| index != inx }.join
    return index if palindrome?(test)
    contador += 1
    puts "Cont: #{contador}"
  end
  return -1 if value == 0
end

  def palindrome1(test)
    rev = []
    largo = test.size
    (1..largo).each do |g|
      rev.push(test[largo - 1])
      largo -= 1
    end
    (1..test.size).each.with_index do |par, ide|
      return false if test[ide] != rev[ide]
    end
    true
  end

  def palindrome?(str)
    up = 0
    dw = str.size - 1
    if str.size % 2
      (1..(str.size / 2)).each do |iter|
         if str[up] != str[dw]
          return false
         end
         up += 1
         dw -= 1
      end
    else
      (1..((str.size - 1) / 2)).each do |iter|
        if str[up] != str[dw]
          return false
         end
         up += 1
         dw -= 1
      end
    end
    true
  end


#p palindromeIndex("aaab")
#p palindromeIndex("baa")
p palindromeIndex("nylsjxeiyadwscf")

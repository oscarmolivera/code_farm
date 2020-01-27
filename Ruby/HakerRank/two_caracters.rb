=begin 
In this challenge, you will be given a string. You must remove characters until the string is made up of any two alternating characters. 
When you choose a character to remove, all instances of that character must be removed. Your goal is to create the longest string possible 
that contains just two alternating letters.
As an example, consider the string abaacdabd. If you delete the character a, you will be left with the string bcdbd. Now, removing the 
character c leaves you with a valid string bdbd having a length of 4. Removing either b or d at any point would not result in a valid string.
Given a string 's', convert it to the longest possible string 't' made up only of alternating characters. Print the length of string on a new line. 
If no string 't can be formed, print'0' instead.
=end


def two_caracters(str)
  str
end

p two_caracters("bbsababbcbabaaab")
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
no era lo que se pedía
  arr = []
  letras = str.split('').uniq
  letras.each{|e| letras.each{ |f| arr << [e,f] if e != f && !arr.include?([f,e]) } }
  arr
=end
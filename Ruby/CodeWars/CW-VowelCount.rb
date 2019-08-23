=begin 
CW-VowelCount
Return the number (count) of vowels in the given string.
We will consider a, e, i, o, and u as vowels for this Kata.
The input string will only consist of lower case letters and/or spaces.
=end

def getCount( inputStr)
   inputStr.chars.select {|v| v=~(/[aeiou]/)}.count
end

puts getCount("murcielago")

=begin ############################################# OTHERS SOLUTIONS 
2)
def getCount(inputStr)
  arr = []
  inputStr.to_enum(:scan, /[aeiou]/).map{|x| arr << x}.length
 end
----------------------------------------------------------------------
3)
def getCount(inputStr)
 inputStr.downcase.count('aeiou')
end
----------------------------------------------------------------------
4)
def getCount(inputStr)
  inputStr.scan(/[aeiou]/i).size
end
----------------------------------------------------------------------
5)
def getCount(inputStr)
  inputStr.count 'aeiouAEIOU'
end
----------------------------------------------------------------------
6)
def getCount(str)
  str.size - str.tr('aeiou', '').size
end
----------------------------------------------------------------------
7)
def getCount(inputStr)
  vowels = %w{a e i o u}
  inputStr.split("").inject(0) do |acc, x|
    vowels.include?(x) ? acc + 1 : acc
  end
end
----------------------------------------------------------------------
8)
def getCount(inputStr)
  v = ['a', 'i', 'e', 'o', 'u']
  inputStr.split('').select {|l| v.include?(l)}.count
end
----------------------------------------------------------------------
9)
def getCount(inputStr)
  new_string = inputStr.gsub(/[aeiou]/, "*")
  new_string.count("*")
end/
----------------------------------------------------------------------

----------------------------------------------------------------------

=end
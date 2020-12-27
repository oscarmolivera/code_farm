def testing(sen)
  # true
  File.join("ruby",  "exam","silver")
end
def exercises 
mozart  =  ["Symphony","Piano  Concerto",  "Violin  Concerto","Horn  Concerto","Violin  Sonata"]  
listened  =  ["Symphony","Violin  Concerto","Horn  Concerto"]  
mozart - listened
end
#p testing(1)
def exercises1
odd = [1,3,5] 
even = [2,4,6] 
num = odd + even 
num.sort
end


class Surface 
  attr_reader :s 
  def initialize(x,y) 
    @s = x * y 
  end 
end

class Volume < Surface 
  attr_reader :v 
  def initialize(x,y,z) 
    super(x,y) 
    @v = x * y * z 
  end 
  Volume.new(2,5,5)
end 




string  =  "test  code"  
string.slice!(0,4)  
#p  string

# puts  "ruby".encoding.name

cc  =  {1=>"New  Zealand",  "ru"=>"Russia",  "ar"=>"Argentina"}


cc.has_key?(1)
##  #p  cc.contain?("nz")
#p  cc.key?(1)
#p  cc.include?(1)
#p  cc.member?(1)


# p "Hello there".class 
# p String.superclass 
class Foo; end 
class Bar < Foo; end 
# p Foo.superclass 
# p Bar.superclass

s = "To be or not to be, that is the question." 
hash = Hash.new(0) 
s.sub(/\w+/) {|i| hash[i] += 1}
#p hash

#p 65.chr    #=> "A"
#p 230.chr   #=> "\xE6"
#p 255.chr(Encoding::UTF-8)   #=> "\u00FF"

s = "foo"
begin
  s[4] = ?b 
rescue IndexError
  "error" 
end

ary = []
ary << 1 && false
true || ary << 2
false && ary << 3
false || ary << 4
#p ary

# p  "foo"  *  12 / 2

# p  "0123456789101112".delete("0-58-")

class Object
  def greeting
    print "How are you?\n"
  end
end

#s.greeting

#p "100,200,300,400,500".split(',').join('\n')
def exercises2
  numbers = [3,89,40,39,29,10,50,59,69]
  num = numbers.inject do |i,j| 
    i > j ? i : j
  end
  num 
end
#p 

=begin
Challenge
Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. 
Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string.
Sample Test Cases

Input:"hello*3"
Output:"Ifmmp*3"

Input:"fun times!"
Output:"gvO Ujnft!"
=end

def letter_changes(str)
  new_word = []
  str.chars.each do |letter|
    letter.downcase.match(/[a-z]/) ? new_word.push(letter.downcase.next) : new_word.push(letter.downcase)
  end
  
  new_word.map{|let| let.match(/[aeiou]/) ? let.capitalize : let}.join
end

#p letter_changes('word')
#p letter_changes("Oscar M Olivera")  
#p letter_changes("fun times!")  
#p letter_changes("hello*3")

=begin
  Challenge
Have the function SimpleAdding(num) add up all the numbers from 1 to num. For example: if the input is 4
then your program should return 10 because 1 + 2 + 3 + 4 = 10. For the test cases, the parameter num will
be any number from 1 to 1000.
Sample Test Cases

Input:12
Output:78

Input:140
Output:9870
  
=end


def simple_adding(num)
  (1..num).reduce(&:+)
end

def simple_adding2(num)
  add = 0
  (1..num).each{ |n| add += n}
  add
end
simple_adding(12)
simple_adding2(12)


=begin
Have the function LetterCapitalize(str) take the str parameter being passed and
capitalize the first letter of each word. Words will be separated by only one 
space.
Sample Test Cases

Input:"hello world"
Output:"Hello World"

Input:"i ran there"
Output:"I Ran There"
=end

def letter_capitalize(str)
  str.split(' ').map{ |word| word.capitalize}.join(' ')
end

letter_capitalize('Por cada día que estudio me convierto en un mejor programador.')

=begin
Have the function SimpleSymbols(str) take the str parameter being passed 
and determine if it is an acceptable sequence by either returning the string 
true or false. The str parameter will be composed of + and = symbols with 
several letters between them (ie. ++d+===+c++==a) and for the string 
to be true each letter must be surrounded by a + symbol. So the string to 
the left would be false. The string will not be empty and will have at least 
one letter.
Sample Test Cases

Input:"+d+=3=+s+"
Output:true

Input:"f++d+"
Output:false
=end

def simple_symbols(str)
  return 'false' if str[0].match(/[a-z]/) || str[-1].match(/[a-z]/)
  value = 'false'
  str.chars.each.with_index do |char, index|
    if char.match(/[a-z]/)
      value = ( str[index-1].match(/[+]/) && str[index+1].match(/[+]/) ) ? 'true' : 'false'
    end
  end
  value
end

# p simple_symbols('+g++h+')  #=> true
# p simple_symbols('f++d+')  #=> false
# p simple_symbols('+d+=3=+s+')  #=> true
# p simple_symbols("++r+===+c++==a")  #=> false
# p simple_symbols("+d=+3+==s+")  #=> false
# p simple_symbols("+z+z+z+")  #=> true
# p simple_symbols("2+a+a+")  #=> true
# p simple_symbols("+z+z+==+a+")  #=> true


def plus_one_array(array)
  return nil if array.join().size < 1
  return nil if array.join().size != array.size
  array.join().succ.chars.map{ |char| char.to_i}
end


# p plus_one_array([2, 3, 9]) # => [2, 4, 0]
# p plus_one_array([4, 3, 2, 5]) # => [4, 3, 2, 6]
# p plus_one_array([1, -9]) # => nil
# p plus_one_array([]) # => nil
# p plus_one_array([1, 2, 34])  # => nil
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

def SimpleSymbols(str)
  #str.sub(/\d*$/) { |x| x.empty? ? 1 : x.next }
  #m = (str.scan(/(\+[a-z]\+)/)).to_a
  #m = (str.scan(/[(\+[a-z]\+)]/)).to_a
  #m = (str.scan(/[[\+{1}][a-z{1}][\+]]/)).to_a.join('')
  #l = (str.scan(/([a-z])/)).to_a
  #r = (m.to_s)
  #z = r.split('+')
  #z.length == l.length ? true : false
  #puts "Str = #{str} | Match: #{z.length} // Length: #{l.length} | #{z.length == l.length ? true : false}"
  #puts "Z: #{z} // L: #{l}"
  t = /([\+][a-z{1}])/
  m = str.scan(t)
  if m.match(/[a-z](\+{1})/)
    puts "True"
  else
    puts "False"
  end
  #puts "------------------------------"
end
   
# keep this function call here    
puts SimpleSymbols("+d+=3=+s+")  
puts SimpleSymbols("f++d+")  
puts SimpleSymbols("++r+===+c++==a")
puts SimpleSymbols("+d=+3+==s+")
puts SimpleSymbols("+z+z+z+")
puts SimpleSymbols("2+a+a+")
puts SimpleSymbols("+z+z+==+a+")


 ##################################OTHERS SOLUTIONS
=begin
---------------------------------------------------
def SimpleSymbols(str)

alphabet = ('a'..'z').to_a
return false if alphabet.include?(str[0]) || alphabet.include?(str[-1])

letter_indicies = []
str.chars.each_with_index {|ch,idx| letter_indicies << idx if alphabet.include?(ch.downcase)}


letter_indicies.each do |idx|
    return false if str[idx-1] != '+' || str[idx+1] != '+'
end 

    true      
end
---------------------------------------------------
def SimpleSymbols(str)
  #1. each letter in the string must have '=' before and after.
  #2. the string will not be empty (no need to search if there's atleast one letter.)
  #3. the string will have at least one letter.
  
  #strategy: 
  #1. I can traverse the string, checking if to see if a given element is a letter.
  #2. If it is a letter, then search if an element before and an element after is '+'
  #3. I can return 'false' even if just one letter fails this test.
  #4. If all the letters satisfy this test, then return true. 
  
  for i in (0...str.size) do 
    if str[i] =~ /[a-zA-Z]/
        return false if str[i - 1] != '+' or str[i + 1] != '+' or i == 0 #added this because if i == 0, then i - 1 == -1
    end
  end
  true
end
---------------------------------------------------
def SimpleSymbols(str)

  str = str.split('')
    letters = []
    ("a".."z").each {|x| letters << x}
    i = 0
    count = 0
    res = []
    while str.length > 0
      if letters.include?(str[i])
        count += 1
        i = i+1
      end
      if str[0] == "+" && letters.include?(str[1]) && str[2] == "+"
        res << str[1]
      end
      str.shift
    end
    res.length == count
         
end
---------------------------------------------------
def SimpleSymbols(str)
  alph = ('a'..'z').to_a
  str.chars.each_with_index do |c, i|
    prev, foll = str[i - 1], str[i + 1]
    if alph.include?(c)
      if i > 0 && i < str.length - 1
        return false if prev != "+" || foll != "+"
      elsif i == 0 || i == str.length - 1
        return false
      end
    end
  end
  true
end
---------------------------------------------------
def SimpleSymbols(str)

  #1. surround the string by ='s
  #2. begin looping
  #3. look for letters
  #4. check if letters surround by a + on both sides
  #5. return false if they aren't
  #6. end loop
  #7. return true
  
  str = '=' + str + '='
  
  (0..str.length-1).each do |i|
     if /[a-zA-Z]/.match(str[i])
         if str[i-1] != '+' or str[i+1] != '+'
             return false
         end
     end
  end
  return true      
end
---------------------------------------------------

=end
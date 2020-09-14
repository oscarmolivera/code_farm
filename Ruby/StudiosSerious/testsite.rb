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
  arr = []
  str.chars.each.with_index do |chr, idx|
    return 'false' if idx == 0 && chr.match(/[a-z]/)
    if chr.match(/[a-z]/)
      if str[idx-1] == '+'
        if str[idx+1] == '+'
          arr << 'true'
        else
          arr << 'false'
        end
      else
        arr << 'false'
      end      
    end
  end
  arr.count('false') > 0 ? 'false' : 'true'
end

puts SimpleSymbols("+d+=3=+s+=5=+g")
# => true

# puts SimpleSymbols("f++d+")
# => false
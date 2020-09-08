=begin
Challenge
Have the function FirstReverse(str) take the str parameter being passed and
return the string in reversed order. For example: if the input string is "Hello
World and Coders" then your program should return the string:
"sredoC dna dlroW olleH".

Sample Test Cases
Input:"coderbyte"
Output:"etybredoc"

Input:"I Love Code"
Output:"edoC evoL I"
=end

def FirstReverse(str)     
  for idx in (0...str.size/2)
    str[idx], str[-(idx + 1)] = str[-(idx + 1)], str[idx]
  end
  str
end
   
# keep this function call here    
puts FirstReverse("Argument goes here")  
puts FirstReverse("I Love Code")  

=begin
  def FirstReverse(str)
    for idx in (0...str.size/2)
    str[idx], str[-(idx + 1)] = str[-(idx + 1)], str[idx]
    end
    return str      
  end

  def FirstReverse(str)
    result = []
    str.chars.each {|ch| result.unshift(ch)}
    return result.join("") 
  end

  def FirstReverse(str)
    new_str = ''
    (str.size - 1).downto(0) {|char| new_str += str[char] }
    new_str
  end   

=end
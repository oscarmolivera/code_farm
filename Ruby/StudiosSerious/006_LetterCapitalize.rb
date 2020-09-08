=begin
  Challenge
Have the function LetterCapitalize(str) take the str parameter being passed and
capitalize the first letter of each word. Words will be separated by only one 
space.
Sample Test Cases

Input:"hello world"
Output:"Hello World"

Input:"i ran there"
Output:"I Ran There"
=end

def LetterCapitalize(str)
  arr= []
  str.scan(/\w+/).each{|word| arr << word.capitalize}
  arr.join(' ')
end
   
# keep this function call here    
puts LetterCapitalize("hello world")  
puts LetterCapitalize("i ran there")

 ##################################OTHERS SOLUTIONS
=begin
---------------------------------------------------
def LetterCapitalize(str)
  words = str.split(' ')
  (0..words.length-1).each do |i|
     words[i][0] = words[i][0].upcase 
  end
  words.join(' ')
end
---------------------------------------------------
def LetterCapitalize(str)
  str.scan(/w+/).map!(&:capitalize).join(' ')
end
---------------------------------------------------
def LetterCapitalize(str)
    str.split(' ').map { |word| word[0].upcase + word[1..-1] }.join(' ')    
end
---------------------------------------------------
def LetterCapitalize(str)
   str.split(' ').map {|x| x.capitalize}.join(' ')      
end
=end
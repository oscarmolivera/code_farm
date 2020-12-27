=begin
Challenge
Have the function LongestWord(sen) take the sen parameter being passed and return 
the largest word in the string. If there are two or more words that are the same 
length, return the first word from the string with that length. Ignore punctuation
and assume sen will not be empty.
Sample Test Cases
-----------------------
Input:"fun&!! time"
Output:time

Input:"I love dogs"
Output:love
=end

def LongestWord(sen)
  sen.split(' ').map{|r| r.match(/[\w]+/).to_s}.max { |a, b| a.length <=> b.length }
end


# keep this function call here    
puts puts LongestWord("Argument goes here")  
puts puts LongestWord("I love dogs")  
puts puts LongestWord("fun&!! time ")


### OTHERS SOLUTIONS
def LongestWord(sen)
  longest = ""
  sen.scan(/\w+/).each{|word| longest = word if word.length > longest.length}
  longest
end

def LongestWord(sen)
  sen.scan(/\w+/).max_by(&:size)
end

def LongestWord(sen)
  sen.gsub(/[^a-zA-Z0-9\s]/,"").split(" ").sort_by(&:length).last
end

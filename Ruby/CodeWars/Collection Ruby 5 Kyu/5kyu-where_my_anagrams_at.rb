=begin 
Where my anagrams at?
Write a function that will find all the anagrams of a word from a list. 
You will be given two inputs a word and an array with words. You should
return an array of all the anagrams or an empty array if there are none.
For example:

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']
anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']
anagrams('laser', ['lazing', 'lazy',  'lacer']) => []
=end

def anagrams(word, words)
  words.select{|w| w.size == word.size}.
    select { |same| same.downcase.chars.sort ==  word.downcase.chars.sort }
end

p anagrams('Hello', ['olleh', 'helco'])
# => 'test ouput'

=begin ############################################# OTHERS SOLUTIONS 
2)
def anagrams(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end
----------------------------------------------------------------------
3)
def anagrams(word, words)
  groups = word.chars.group_by(&:chr)
  words.select{|w| w.chars.group_by(&:chr) == groups}
end
----------------------------------------------------------------------
4)
def anagrams(w, s) s.find_all {|a| a.chars.sort == w.chars.sort} end
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

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end


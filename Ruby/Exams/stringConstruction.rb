=begin
  Given two strings a and b, both consisting only of lowercase English letters, your task is to calculate how many strings equal to a can be constructed using only letters from the string b? Each letter can be used only once and in one string only.
  Example
  For a = "abc" and b = "abccba", the output should be stringsConstruction(a, b) = 2.
  We can construct 2 strings a = "abc" using only letters from the string b.
  For a = "ab" and b = "abcbcb", the output should be stringsConstruction(a, b) = 1. 
=end
def test1(a, b)
  return 0 if b.length < a.length
    char_match = []
    b_arry = b.chars
    a.chars.each do |letter|
        char_match << b_arry.count(letter)
    end
  char_match.sort
end

def stringsConstruction(a, b)
  return 0 if b.length < a.length
  a_hash = {}
  b_arry = b.chars
  char_match = []
  a.chars.each do |letter|
    a_hash[letter] = a.chars.count(letter)
  end
  a_hash.keys.each do |item|
    char_match << b_arry.count(item)/a_hash[item]
  end
  char_match.sort.min
end

p stringsConstruction("pqrsttt", "parfkajfraqrakjssattertjeqsqaptatdptdstasreraqprtt")
# => 3
p stringsConstruction("zzz", "zzzzzzzzzzz")
# => 3
p stringsConstruction("abcabcabc", "aaaaaaaaaaabbbbbbbbbbcccccccccc")
# => 3


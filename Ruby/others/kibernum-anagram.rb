######-- Kibernum Anagram########
## Escribe un metodo que sea capaz de validad si dos 
## palabras son un anagrama
## oscarmolivera@gmail.com
################################

def is_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

puts is_anagram?("felix", "life")
puts is_anagram?("resdful", "fluster")
puts is_anagram?("creative", "reactive")




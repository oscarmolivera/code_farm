=begin 
You are designing a compiler for a C++ program and need to check that braces in any given file are balanced.
Braces in a string are considered to be balanced if the following criteria are met:

  · All braces must be closed. braces come in pairs of the form (), [] and {}; and the left braces opens the
  pair and the right closed it
  · In any set od nested braces, the braces between any pair must be closed.

For example, [{}] is a valid grouping of braces but [{]}
Complete the function braces in the editor below. The function must return an array of string at each index i
denotes wherether or not the braces were balanced i values[i]. The array should consist of strings YES or No
align with their indices in values.
Braces has the following parameters(s)
  values[values[0]], ... values[1]: an array of strings to analize
=end

def braces(values)
  resp = []
  values.each do |s|
    valid_string?(s) ? resp << "YES" : resp << "NO"
  end
  puts resp
  puts '..-------..'
end

def valid_string?(str)
  pile = []
  simbolos = { '{' => '}', '[' => ']', '(' => ')' }
  str.each_char do |char|
    #puts char
    pile << char if simbolos.key?(char)
    puts "pileOP:#{pile}"
    puts "simbolos.key(char)=>'#{simbolos.key(char)}'<="
    #return false if simbolos.key(char) && simbolos.key(char) != pile.pop
  end
  puts "pileFinal:#{pile}"
  pile.empty?
end
#puts braces(['{[}]'])
#puts braces(['{}[]()', '{[}]'])
#puts braces(['{[()]}', '{[(])}', '{{[[(())]]}}'])
puts braces(['}][}}(}][))]', '[](){()}', '()', '({}([][]))[]()', '{)[](}]}]}))}(())(', '([[)'])

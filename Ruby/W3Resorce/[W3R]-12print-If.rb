=begin
12. Write a Ruby program to create a new string where "if" is added to the front of a given string. If the string already begins with "if", return the string unchanged. Go to the editor
Sample Output:
if else
if else
=end

def checkIf(str)
  (str.match(/^(if|If)/)).to_s.length > 0 ? puts("#{str}") : puts("If #{str}")  
end

checkIf("Always")
checkIf("if always")
checkIf("So I was")
checkIf("If caracas")
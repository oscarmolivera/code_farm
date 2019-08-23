=begin
  7. Write a Ruby program to accept a filename from the user print the extension of that. Go to the editor
Sample Output:
File name: test.rb
Base name: test
Extention: .rb
Path name: /user/system
=end

def descomponerPath(str)
  g1, g2, g3 = str.match(/(.+)\/(\D+\w+)(.rb)/).captures
  puts "File name: #{g2}#{g3}"
  puts "Base name: #{g2}"
  puts "Extention: #{g3}"
  puts "Path name: #{g1}"
end



def respuesta(str)
  puts "File name: #{File.basename str}"
  puts "Base name: #{File.basename str, ".rb"}"
  puts "Extention: #{File.extname str}"
  puts "Path name: #{File.dirname str}"
end

descomponerPath("/home/oolivera/Webapps/CodeWars/Ruby/[RbEx]Multipy_numbers.rb")
respuesta("/home/oolivera/Webapps/CodeWars/Ruby/[RbEx]Multipy_numbers.rb")
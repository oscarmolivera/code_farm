=begin
6. Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them. Go to the editor
Sample Output:
Input your first name: 
Input your last name: 
Hello Lanoie Gary
=end

ARGV.clear
STDOUT

class Person
  def name(str)
    @name = str
  end
  def lastname(str)
    @lastname = str
  end

  def valid?
    if @name == '' || @lastname == '' 
      puts "Name o Lastname can't be blank!" 
    else
       true
    end
  end

  def print_names
    puts "Hello #{@lastname} #{@name}"
  end
end
person = Person.new
puts "Input your first name:"
person.name(gets.chomp)
puts "Input your last name:"
person.lastname(gets.chomp)

if person.valid?
  person.print_names
else
  puts "Name o Lastname can't be blank!"
end
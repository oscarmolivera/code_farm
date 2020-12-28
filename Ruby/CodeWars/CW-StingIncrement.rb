=begin
String incrementer  
Your job is to write a function which increments a string, to create a new string.
    If the string already ends with a number, the number should be incremented by 1.
    If the string does not end with a number. the number 1 should be appended to the new string.
Examples:
foo -> foo1
foobar23 -> foobar24
foo0042 -> foo0043
foo9 -> foo10
foo099 -> foo100
Attention: If the number has leading zeros the amount of digits should be considered.
=end

def increment_string(input)
  num = input.scan(/\d$*/).join('').to_s
  return input + '1' if num.empty?
  input.gsub(num, num.next)
end

p increment_string("foo") # => foo1
p increment_string("foobar001") # => foobar002
p increment_string("foobar1") # => foobar2
p increment_string("foobar00") # => foobar01
p increment_string("foobar99") # => foobar100
p increment_string("f00bar") # => f00bar1
p increment_string("f00b4r") # => f00b4r1
p increment_string("foobar000") # => foobar001
p increment_string("foobar999") # => foobar1000
p increment_string("foobar0999") # => foobar01000
p increment_string("foobar001") # => foobar002
p increment_string("foobar1") # => foobar2
p increment_string("f0") # => f1
p increment_string("fB") # => fB1

# CLEVER SOLUTIONS
=begin
#########################################################################################
1)
  def increment_string(input)
    input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
  end
-------------------------------------------------------------------
2)
  def increment_string(input)
    input[/\d\z/] ? input.sub(/(\d+)\z/) { $1.next } : input + '1'
  end
-------------------------------------------------------------------
3)
  def increment_string(str)
    number = str[/\d+$/]
    number_length = number ? number.length : 0
    string_without_numbers = number ? str.delete!(number) : str
    string_without_numbers + "%0#{number_length}d" % (number.to_i + 1)
  end
-------------------------------------------------------------------
4)
def increment_string(i)
  i += i.end_with?(*("0".."9")) ? "" : "0"
  i.sub(/(\d+$)/){eval ("'%0#{$1.length}d' % #{$1.to_i+1}")}
end
-------------------------------------------------------------------
5)
  def increment_string(input)
	return input + '1' if input =~ /\D$/ || input.empty?
	input.sub(/\d+$/) { |n| (n.to_i + 1).to_s.rjust(n.length, '0')}
  end
-------------------------------------------------------------------
6)
  def increment_string(strng)
	num_str = strng.scan(/\d+$/).first.to_s
	return strng.gsub(num_str, num_str.next) if strng.match(/\d$/)
	return strng + "1" if num_str.empty?
  end  
-------------------------------------------------------------------
7)
  def increment_string(input)
	input.sub(/\d*$/) { |x| x.empty? ? 1 : x.next }
  end
------------------------------------------------------------------
8)
def increment_string(str)
  str.scan(/\d+$/).any? ? "#{str.gsub(/\d+$/, '')}#{str.scan(/\d+$/).to_s.succ.delete('["\]')}" : "#{str.gsub(/\d+$/, '')}1"
end
=end

##THRASH CAN
#--------------------------------------------------
=begin 
  #ceros = input.scan(/0/).join
  #puts "#{textWithCeros}#{numbers}"
  #onlyText= input.scan(/[\D]/).join('')
  #numbers = input.gsub(/[^\d]/, '')
  #places = numbers.length
  #newNumber = input.gsub(/[^\d]0*/, '').to_i + 1
  #newNumber2 ="#{ceros}#{input.gsub(/[^\d]0*/, '').to_i + 1}" 
  #newNumber3 ="#{input.gsub(/[^\d]0*/, '').to_i + 1}" 
  #puts input.match(/[foo]/)
  #puts input.gsub(/[^d]0*/, '').strip
  #puts arr = input.to_enum(:scan, /[[^\d]0*]/)
  #puts input.split('')
 
  if places == 0 || places == newNumber2.length || places == newNumber3.length
    puts "#{onlyText}#{ceros}#{newNumber}"
  else
    puts "#{onlyText}#{newNumber}"
  end
  ===============================================================================
  ceros = input.scan(/0/).join
  numbers = input.gsub(/[^\d]0*/, '').to_i + 1
  textWithCeros= input.scan(/[^\d]0*/).join('')
  onlyText= input.scan(/[\D]/).join('')
  #puts "input.length: #{input.length} | #{input.length == (textWithCeros+numbers.to_s).length} | newstring.length: #{(textWithCeros+numbers.to_s).length}"
  #puts "input: #{input} | newstring: #{(textWithCeros+numbers.to_s)} | ceros: #{ceros}"
  
  #----------------------------------------------------------
  if input.length == (textWithCeros+numbers.to_s).length || ceros.empty?
    puts "#{(textWithCeros+numbers.to_s)}"
  else
    ceros = ceros.chomp('0')
    puts "#{onlyText+ceros+numbers.to_s}"
================================================================================= 
ceros = input.scan(/0/).join
  numbers = input.gsub(/[^\d]0*/, '').to_i + 1
  textWithCeros= input.scan(/[^\d]0*/).join('')
  onlyText= input.scan(/[\D]/).join('')
  if input.length == (textWithCeros+numbers.to_s).length || ceros.empty?
    (textWithCeros+numbers.to_s)
  else
    ceros = ceros.chomp('0')
    onlyText+ceros+numbers.to_s
  end

  #puts "#{places}:\'#{numbers}\' == #{newNumber}: \'#{ceros}#{newNumber}\'"
  #arr = []
  #puts input.to_enum(:scan, /[aeiou]/).map{|x| arr << x}.length    
  #puts input.to_enum(:scan, /[aeiou]/).map{|x| arr << x}
  #puts input.gsub(/\D/, ' ').strip
  #puts input.gsub(/\D/, ' ').strip.to_i + 1 
  #puts input.gsub(/\d/, ' ').strip
------------------------------------------------------------------------------------
	ceros = input.scan(/0/).join
	numbers = input.gsub(/[^\d]0*/, '').to_i + 1
	textWithCeros= input.scan(/[^\d]0*/).join('')
	onlyText= input.scan(/[\D]/).join('')
	if input === 'f00bar'  || input === 'f00b4r'
		if input === 'f00bar'
			puts "Input: #{input}"
			'f00bar1'
		else
			puts "Input: #{input}"
			'f00b4r1'
		end
	else
		if input.length == (textWithCeros+numbers.to_s).length || ceros.empty?
			puts "Input: #{input}"
			(textWithCeros+numbers.to_s)
		else
			puts "Input: #{input}"
			ceros = ceros.chomp('0')
			onlyText+ceros+numbers.to_s
		end
	end 

=end

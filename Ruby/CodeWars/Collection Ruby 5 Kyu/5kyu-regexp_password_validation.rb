=begin 
You need to write regex that will validate a password to make sure it meets the following criteria:

    At least six characters long
    contains a lowercase letter
    contains an uppercase letter
    contains a number

Valid passwords will only be alphanumeric characters.

=end

def password_validation(str)
  /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)[\w]{6,}$/.match?(str)
end

p password_validation('TDq4Q8-oa')
# => false
p password_validation('Q7Aq33P_z')
# => false
p password_validation('au-I0e')
# => false
p password_validation('FQbcw9HKTTjsKRF_')
# => false
p password_validation('jgZPvDU_NMVp6YLsoi')
# => false



=begin ############################################# OTHERS SOLUTIONS 
2)
class PasswordValidator
  def =~(other)
    return 0 if valid(other)
  end
  
  private
  
  def valid(other)
    other.length > 5 &&
    /[a-z]/ =~ other &&
    /[A-Z]/ =~ other &&
    /[_\W]/ !~ other &&
    /\d/    =~ other
  end
end

regex = PasswordValidator.new
----------------------------------------------------------------------
3)
regex = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/

----------------------------------------------------------------------
4)
regex=Object.new
def regex.=~(other)
  other.size >= 6 && other.count('a-zA-Z0-9') == other.size && other.count('[a-z]') > 0 && other.count('[A-Z]') > 0 && other.count('[0-9]') > 0 ? 0 : false
end
----------------------------------------------------------------------
5)
regex=/(?=.*\p{Upper})(?=.*\p{Lower})(?=.*\d)\A\p{Alnum}{6,}\z/
----------------------------------------------------------------------
6)
regex=/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{6,}$/
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
p password_validation('fjd3IR9')
# => true
p password_validation('ghdfj32')
# => false
p password_validation('DSJKHD23')
# => false
p password_validation('dsF43')
# => false
p password_validation('4fdg5Fj3')
# => true
p password_validation('DHSJdhjsU')
# => false
p password_validation('fjd3IR9.;')
# => false
p password_validation('fjd3  IR9')
# => false
p password_validation('djI38D55')
# => true
p password_validation('a2.d412')
# => false
p password_validation('JHD5FJ53')
# => false
p password_validation('!fdjn345')
# => false
p password_validation('jfkdfj3j')
# => false
p password_validation('123')
# => false
p password_validation('abc')
# => false
p password_validation('123abcABC')
# => true
p password_validation('ABC123abc')
# => true
p password_validation('Password123')
# => true
p password_validation('TDq4Q8-oa')
# => false
p password_validation('Q7Aq33P_z')
# => false
p password_validation('au-I0e')
# => false
p password_validation('FQbcw9HKTTjsKRF_')
# => false
p password_validation('jgZPvDU_NMVp6YLsoi')
# => false


regex=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)[\w-]{6,}$/

fjd3IR9
ghdfj32
DSJKHD23
dsF43
4fdg5Fj3
DHSJdhjsU
fjd3IR9.;
fjd3  IR9
djI38D55
a2.d412
JHD5FJ53
!fdjn345
jfkdfj3j
123
abc
123abcABC
ABC123abc

TDq4Q8-oa
Q7Aq33P_z
au-I0e
FQbcw9HKTTjsKRF_
jgZPvDU_NMVp6YLsoi
=end

=begin 
Lilah has a string, 's', of lowercase English letters that she repeated
infinitely many times. Given an integer, 'n', find and print the number of
letter a's in the first letters of Lilah's infinite string.

For example, if the string s = 'abcac' and, n = 10 the substring we consider is
abcacabcac, the first characters of her infinite string. There are 4 occurrences
of a in the substring.

Function Description
Complete the repeatedString function in the editor below. It should return an
integer representing the number of occurrences of a in the prefix of length in
the infinitely repeating string.

repeatedString has the following parameter(s):

    s: a string to repeat
    n: the number of characters to consider
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
RAZONAMIENTO
Este es un problema para saber cuantas 'a' hay en 'str' de largo 'n'.
Donde 'str' es menor a 'n' pero se repite hasta alzanzar ese tamaño.
Como no podemos simplemente hacer (str * n).slice(0, n).count('a') porque no
seria eficiente
1) Saber cuantas 'a' hay dentro de 'str' al inicio.
2) Saber cuantas cadenas 'str' contiene: str2 = (str * n).slice(0, n)
  str2 / str.size que es lo mismo decir: n / str.size
3) Si al dividir (n/str.size) nos queda un residuo, hay que saber, que tan largo
en caracteres es ese residuo
4) Sabiendo el residuo, podemos extraerlo con SLICE para saber cuantas 'a' hay en
el
5) ya solo queda multiplicar 1) * 2) y sumarle 4)


=end

def repeated_string(str, n) 
  # str.count('a') * (n / str.size()) + str.slice(0,(n % str.size())).count('a')
  str_a = str.count('a')
  grupos_str = n / str.size
  residuo = n % str.size
  a_en_resiuo = str.slice(0, residuo).count('a')
  (str_a * grupos_str) + a_en_resiuo
end

# p repeated_string('aba', 10)
# p repeated_string('a', 1000000000000) 
p repeated_string('jdiacikk', 899491)
# => 112436
p repeated_string('kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm', 736778906400)
# => 51574523448
p repeated_string('hebaieaikal', 127)
# => 34
p repeated_string('abcac', 10)
# => 
=begin ############################################# OTHERS SOLUTIONS 
2)

----------------------------------------------------------------------
3)

----------------------------------------------------------------------
4)

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
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
	#puts "(str * n).count('a')= #{(str * n).count('a')}"
  #str.count('a') * (n / str.size()) + str.slice(0,(n % str.size())).count('a')
  num_de_str_dentro_n = n /str.size
  a_en_str = str.count('a')
  subtotal_de_a = a_en_str * num_de_str_dentro_n
=end
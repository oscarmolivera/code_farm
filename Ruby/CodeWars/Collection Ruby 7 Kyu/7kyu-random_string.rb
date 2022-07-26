=begin 
Peeta needs to pass a secret code to his fellas.
The secret code need to consist of 10 digits of Upper case letters and numbers. Also it can
only begin with a letter.

Valid example
- RJUMVXW7VL
- F01DW5FYMF
- DWTLV0XTB6```

Invalid example
- 4TYVKP07DL
- sdfaiodfj8
- abc
- JI*&SDSFWQQ
- K9OORT6_68```

Ready to help Peeta out?
=end

def random_sting
  [*('a'..'z'), *('0'..'9')]
    .shuffle[0, 9]
    .unshift(('a'..'z')
    .to_a[rand(26)])
    .map(&:capitalize)
    .join('')
end

p random_sting
# => 'test ouput'

=begin ############################################# OTHERS SOLUTIONS 
2)
def secret
  [*"A".."Z"].sample + Array.new(9){ [*0..9, *"A".."Z"].sample }.join
end
----------------------------------------------------------------------
3)
def secret()
  (0...10).map { (65 + rand(26)).chr }.join
end

----------------------------------------------------------------------
4)
def secret
  letters = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  result = letters[(letters.length * rand).floor]
  for i in 0...9
    result += rand > 0.5 ? letters[(letters.length * rand).floor] : (10 * rand).floor.to_s
  end
  result
end
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
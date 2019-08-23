=begin 
Credit Card Mask
Usually when you buy something, you're asked whether your credit card number, 
phone number or answer to your most secret question is still correct. 
However, since someone could look over your shoulder, you don't want that 
shown on your screen. Instead, we mask it.
Your task is to write a function maskify, which changes all but the last four 
characters into '#'.
=end

def maskify(cc)
  for idx in (0...cc.size-4)
    cc[idx] = '#'
  end
  cc
end

puts maskify('4556364607935616')
# => should return '############5616'
puts maskify('64607935616')
# => sould return '#######5616'
puts maskify('1')
# => should return '1'
puts maskify('')
# => should return ''

# "What was the name of your first pet?"
puts maskify('Skippy')
# => should return '##ippy'
puts maskify('Nananananananananananananananana Batman!')
# => should return '####################################man!'


=begin ############################################# OTHERS SOLUTIONS 

----------------------------------------------------------------------
def maskify(cc)
  cc.gsub(/.(?=....)/, '#')
end
----------------------------------------------------------------------
def maskify(cc)
  cc.size <= 4 ? cc : "#" * (cc.length-4) + cc[-4..-1]
end
----------------------------------------------------------------------
def maskify(cc)
  cc.chars.each_with_index.map{|x,i| i < cc.length - 4 ? '#' : x}.join
end
----------------------------------------------------------------------
def maskify(cc)
  return cc if cc.length <= 4
  cc.split('').fill('#', 0...cc.length - 4).join
end
----------------------------------------------------------------------
def maskify(cc)
  (cc.length <= 4) ? (return cc) : (return ('#' * (cc.length - 4)) + cc[cc.length - 4, cc.length])
end
----------------------------------------------------------------------
def maskify(cc)
  hash = cc[0..-5].length
  '#' * hash + cc[hash..-1]
end
----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

=end
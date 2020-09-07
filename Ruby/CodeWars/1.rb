=begin 

=end

def test(str)
  arr = []
  str.chars.map{|chr| arr.unshift(chr)}
  arr.join('')
end

p test('Hello world and coders')
# => 'test ouput'

=begin ############################################# OTHERS SOLUTIONS 
2)
def test(str)
  reverse_phrase = []
  str.split(' ').each do |word|
    reverse_word = []
    word.chars.each do |chr|
      reverse_word.unshift(chr)
    end
    reverse_phrase.unshift(reverse_word.join(''))
  end
  reverse_phrase.join(' ')
end
----------------------------------------------------------------------
3)
def test(str)
  arr = []
  str.chars.map{|chr| arr.unshift(chr)}
  arr.join('')
end

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

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
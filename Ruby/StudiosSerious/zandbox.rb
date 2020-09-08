
def test(str)
  arr = []
  str.chars.map{ |chr| arr.unshift(chr) }
  arr.join('')
end

p test('Hello world and coders')
# => 'test ouput'

def longest_word(sentence)
  hash = {}
  sentence.split(' ').each do |word|
    clean_word = word.gsub(/\W+/,'')
    hash[clean_word] = clean_word.length
  end
  longest_word = ''
  hash.map { |ky, vl| longest_word = ky if vl > longest_word.length }
  longest_word
end

p longest_word('Ignore punctuation and assume sen will not be empty.')
# => 'longest_word ouput'
p longest_word('fun&!! time')
# => time
p longest_word('I love dogs')
# => love


def letter_changes(str)
  arr = []
  str.chars.each { |chr| chr.match(/[A-Za-z]/) ? arr << chr.next : arr << chr }
  arr.join('')
end

p letter_changes('data')
# => 'ebub'
p letter_changes('hello*3')
# => "Ifmmp*3"
p letter_changes('fun times!')
# => "gvO Ujnft!"

def simple_adding(num)
  (1..num).reduce(:+)
end

p simple_adding(5)
# => 15
p simple_adding(12)
# => 78
p simple_adding(140)
# => 9870

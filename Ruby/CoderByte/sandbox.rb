

def longest_word(sen)
  (0..(sen.length/2)).each do |wo|
    # str[idx], str[-(idx + 1)] = str[-(idx + 1)], str[idx]
    sen[-(wo + 1)] = sen[wo]
    sen[wo] = sen[-(wo + 1)]
  end
  sen
end

p longest_word('Ignore punctuation and assume sen will not be empty.')
# => 'longest_word ouput'
p longest_word('fun&!! time')
# => time
p longest_word('I love dogs')
# => love

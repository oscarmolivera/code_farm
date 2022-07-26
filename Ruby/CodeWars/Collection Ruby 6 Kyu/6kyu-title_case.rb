=begin 
A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the
first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case
unless it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The
list of minor words will be given as a string with each word separated by a space. Your function should ignore the
case of the minor words string -- it should behave in the same way even if the case of the minor word string is
changed.

###Arguments
First argument (required): the original string to be converted.
Second argument (optional): space-delimited list of minor words that must always be lowercase except for the first
word in the string. The JavaScript/CoffeeScript tests will pass undefined when this argument is unused.

###Example
=end

def title_case(title, minor_words = '')
  new_title = []
  if minor_words.size > 0
    title.split(' ').map(&:downcase).drop(1).each do |word|
      new_title << if (/\s(#{word.downcase})\s/).match(' '+ minor_words .split(' ').map(&:downcase).join(' ') + ' ')
        p "Hay Match => #{word}"
        word.downcase
      else
        p "No hay Match => #{word}"
        word.capitalize
      end
    end
    new_title.unshift(title.split[0].capitalize)
  else
    title.split(' ').each{ |word| new_title << word.capitalize}
  end
  new_title.join(' ')
end
p title_case('a clash of KINGS', 'a an the of')
# => should return: 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In')
# => should return: 'The Wind in the Willows'
p title_case('the quick brown fox')
# => should return: 'The Quick Brown Fox'
p title_case('First a of in', 'an often into')
# => "First A Of In"


=begin ############################################# OTHERS SOLUTIONS 
2)
def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end
----------------------------------------------------------------------
3)
def title_case(title, minor_words='')
  title.capitalize.gsub(/\w+/){|a| minor_words[/\b#{a}\b/i] ? a : a.capitalize }
end
----------------------------------------------------------------------
4)
def title_case(title, minor_words='')
  minor_words = minor_words.downcase.split(' ')
  title.capitalize.split(' ').map { |word| minor_words.include?(word.downcase) ? word : word.capitalize }.join(' ')
end
----------------------------------------------------------------------
5)
def title_case(title, minor_words='')
  title.capitalize.split.map do |w|
    minor_words.downcase.split.include?(w) ? w : w.capitalize
  end.join ' '
end
----------------------------------------------------------------------
6)
def title_case(title, minor_words = "")
  result = ""
  minor_words = minor_words.split(" ").each{|w| w.downcase!}
  title.split(" ").each_with_index do |word, index|
    if minor_words.index(word.downcase) && index > 0
      result += word.downcase
    else
      result += word.capitalize
    end
    result += " "
  end
  return result.strip
end
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
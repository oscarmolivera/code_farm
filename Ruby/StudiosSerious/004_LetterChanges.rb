=begin
Challenge
Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. 
Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string.
Sample Test Cases

Input:"hello*3"
Output:"Ifmmp*3"

Input:"fun times!"
Output:"gvO Ujnft!"
=end
def LetterChanges(str)
  str.chars.map{|ltr| ltr.match(/\w+/) ? ltr.next : ltr}.join('').gsub(/[aeiou+]/){ |vow| vow.capitalize}
end


   
# keep this function call here    
puts LetterChanges("Oscar M Olivera")  
puts LetterChanges("fun times!")  
puts LetterChanges("hello*3") 

  ##################################OTHERS SOLUTIONS
=begin
---------------------------------------------------
def LetterChanges(str)
  #1. convert letters using gsub
  #2. capitalize every vowel
  converted = str.gsub(/[a-zA-Z]/) do |i|
     if i == 'z' or i == 'Z'
         'a'
     else
         (i.ord + 1).chr
     end
  end
  converted.tr('aeiou', 'AEIOU')
end
---------------------------------------------------
def LetterChanges(str)
  alph, changes = ("a".."z").to_a, ("a".."z").to_a.rotate.map{|letter| "aeiou".include?(letter) ? letter.upcase : letter}
  result = str.chars.map{|char| alph.include?(char) ? changes[alph.index(char)] : char}.join
end
---------------------------------------------------
def LetterChanges(str)
  letters = ('a'..'z').to_a
  str = str.chars.map do |char|
      if letters.include? char
        new_char = letters[(letters.index(char).next) % 26]
        new_char =~ /[aeiou]/ ? new_char.upcase : new_char
      else
          char
      end
      end.join('')
  return str 
         
end
--------------------------------------------------
def LetterChanges(str)

alphabet = ('a'..'z').to_a
result = str.chars.map do |ch, idx|
            if alphabet.include?(ch)
                next_letter = alphabet[alphabet.index(ch)+1]
                'aeiou'.include?(next_letter) ? next_letter.upcase : next_letter
            else 
                ch 
            end 
        end 

    result.join("")         
end
------------------------------------------------primera version
def LetterChanges(str)
  newWord = []  
  str.each_char do |ch|
    if ch.match(/\w/) && ch.match(/\D/)
      #puts "#{ch} => #{(ch.ord+1).chr.downcase}"
      if (ch.ord+1).chr.match(/[aeiou]/)
        newWord << (ch.ord+1).chr.capitalize
      else
        newWord << (ch.ord+1).chr.downcase
      end
    else
      newWord << ch
    end
  end
  newWord.join('')
end
--------------------------------------------------------------
  newWord = str.each_char.map do |ch|
    if ch.match(/[a-zA-Z]/)
      letter = (ch.ord+1).chr
      letter.match(/[aeiou]/) ? letter.upcase : letter.downcase
    else
      ch
    end
  end
  newWord.join('')
=end
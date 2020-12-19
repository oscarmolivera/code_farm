def letter_capitalize(str)
  str.split(' ').map {|word| word.capitalize}.join
end


p letter_capitalize('miranda allroa')


def simple_symbols(str)
  return 'false3' if str[0].match(/[a-zA-Z]/)
  
  str.chars.each.with_index do |char, idx|
    if char.match(/[a-zA-Z]/)
      if str[idx-1] == '+'
        if str[idx+1] == '+'
          return 'true'
        else
          return 'false1'
        end
      else
        return 'false2'
      end
    end
  end
end

p simple_symbols("+d+=3=+s+")
# => true

p simple_symbols("+f++d")
# => false
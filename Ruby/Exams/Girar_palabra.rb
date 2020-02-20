=begin 
  Dada una palabra girar todas sus letras sin usar el metodo reverse()
=end

def turn_word(str)
  nw_str=[]
  cont = str.size()
  str.split('').each.with_index do |c, ix|
    nw_str[ix] = str.downcase().split('')[cont-1]
    cont -= 1
  end
  nw_str.map.with_index{|m, ix| ix == 0 ? m.upcase() : m}.join('')
end

# p turn_word("Migrante")

def rotar_palabra_izq(str, places)
  return str if places % str.size() == 0
  mod = places % str.size()
  str.size()
  izq = str.split('').map.with_index{|c, ix| str[ix-mod]}
  der = str.split('').map.with_index{|c, ix| str[ix+mod]}.map.with_index{|l, id| l.nil? ? str.split('')[( mod + id)- str.size()] : l}
end

p rotar_palabra_izq("migrante",5)




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

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
=begin 
You probably know the "like" system from Facebook and other pages. 
People can "like" blog posts, pictures or other items. We want to 
create the text that should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take 
in input array, containing the names of people who like an item. 
It must return the display text as shown in the examples:
=end

def likes(names)
  return  "No one likes this" if names.length < 1 
  return  "#{names[0]} likes this" if names.length == 1 
  return  "#{names[0]} and #{names[1]} likes this" if names.length == 2 
  return  "#{names[0]}, #{names[1]} and #{(names.length) -2} others like this" if names.length > 2
end

puts likes([])
# => 'no one likes this'
puts likes(['Peter'])
# => 'Peter likes this'
puts likes(['Jacob', 'Alex'])
# => 'Jacob and Alex like this'
puts likes(['Max', 'John', 'Mark'])
# => 'Max, John and Mark like this'
puts likes(['Alex', 'Jacob', 'Mark', 'Max'])
# => 'Alex, Jacob and 2 others like this'


=begin ############################################# OTHERS SOLUTIONS 
2)
def likes n
  a,b,c,*d = n
  l = "like this"
  r = ["no one likes this", 
        "#{a} likes this", 
        "#{a} and #{b} #{l}", 
        "#{a}, #{b} and #{c} #{l}", 
        "#{a}, #{b} and #{d.size+1} others #{l}"]
  r[n.size] || r[-1]
end
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
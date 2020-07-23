=begin 
 Remove String Spaces
 Simple, remove the spaces from the string, then return the resultant string.
=end

def no_space(x)
  x.split.join('')
end

p no_space('8 j 8   mBliB8g  imjB8B8  jl  B')
# =>'8j8mBliB8gimjB8B8jlB'
p no_space('8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd')
# =>'88Bifk8hB8BB8BBBB888chl8BhBfd'
p no_space('8aaaaa dddd r     ')
# =>'8aaaaaddddr'
p no_space('jfBm  gk lf8hg  88lbe8 ')
# =>'jfBmgklf8hg88lbe8'
p no_space('8j aam')
# =>'8jaam'

=begin ############################################# OTHERS SOLUTIONS 
2)
def no_space(x)
  x.gsub(" ","")
end
----------------------------------------------------------------------
3)
def no_space(x)
  x.delete(" ")
end
----------------------------------------------------------------------
4)
def no_space(x)
  x.tr("\s", "")
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
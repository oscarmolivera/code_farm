=begin 
Rebuilding the Tower of Babel

Task
Define a function, babel, which accepts a positive integer argument height and returns a string representing a tower of
the specified height. If the height is 0 then return an empty string. Input validation is not required.

Some examples below:

babel(0)        babel(1)        babel(2)        babel(3)      babel(4)       babel(5)
.                   o              o              o              o              o
.                   o              o              o              o              o                         
.                   o              o              o              o              o
.                                 ooo            ooo            ooo            ooo
.                                 ooo            ooo            ooo            ooo
.                                 ooo            ooo            ooo            ooo
.                                               ooooo          ooooo          ooooo
.                                               ooooo          ooooo          ooooo
.                                               ooooo          ooooo          ooooo
.                                                             ooooooo        ooooooo
.                                                             ooooooo        ooooooo
.                                                             ooooooo        ooooooo
.                                                                           ooooooooo
.                                                                           ooooooooo
.                                                                           ooooooooo

If you are still confused as to what the pattern is, here are a few simple rules:

For each width of the tower you build three consecutive stories of the same width Each time you complete 3 stories,
the width of the tower increases by 2 units (1 to the left and 1 to the right) You should add appropriate whitespace
characters to the left of the tower for appropriate padding but there should be no trailing whitespace characters for
all stories
You separate one story from then next with a newline "\n" character
There should not be a trailing newline character at the end of the string
=end

def babel(stories)
  return '' if stories < 1
  1.upto(stories).each do |step|
    space = (" " * ((stories+1) - step))
    col = "o" * (step + (step - 1))
    puts ( space + col + space + "\n") * 3
  end
end

#babel(0)
# => ''
#babel(1)

#babel(2)
babel(4)

=begin ############################################# OTHERS SOLUTIONS 
2)

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
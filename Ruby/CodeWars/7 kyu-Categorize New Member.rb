=begin 
Categorize New Member
The Western Suburbs Croquet Club has two categories of membership, Senior and Open. 
They would like your help with an application form that will tell prospective members 
which category they will be placed.

To be a senior, a member must be at least 55 years old and have a handicap greater than 7. 
In this croquet club, handicaps range from -2 to +26; the better the player the lower 
the handicap.
Input

Input will consist of a list of lists containing two items each. Each list contains 
information for a single potential member. Information consists of an integer for 
the person's age and an integer for the person's handicap.

Note for F#: The input will be of (int list list) which is a List<List>
Example Input
[[18, 20],[45, 2],[61, 12],[37, 6],[21, 21],[78, 9]]
Output
Output will consist of a list of string values (in Haskell: Open or Senior) stating whether the respective member is to be placed in the senior or open category.
Example Output
["Open", "Open", "Senior", "Open", "Open", "Senior"]
=end

def openOrSenior(data)
  arr = []
  data.map do |age, hc|
    if age >= 55 and hc > 7
      arr << 'Senior'
    else
      arr << 'Open'
    end
  end  
  p arr
end

=begin ############################################# OTHERS SOLUTIONS 
def openOrSenior(data)
  data.map { |member| member[0] > 54 && member[1] > 7 ? 'Senior' : 'Open' }
end
----------------------------------------------------------------------
def openOrSenior(data)
  data.map { |age,handycap| age >= 55 && handycap > 7 ? "Senior" : "Open" }
end
----------------------------------------------------------------------
def openOrSenior(data)
  data.each.map do |age, handicap|
    age > 54 && handicap > 7 ? 'Senior' : 'Open'
  end
end
----------------------------------------------------------------------
def openOrSenior(data)
    x = []
    data.each { |pair| x << (pair[0] >= 55 && pair[1] > 7? 'Senior' : 'Open') }
    x
end
----------------------------------------------------------------------

=end
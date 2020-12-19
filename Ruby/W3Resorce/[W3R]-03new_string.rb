################################
##Write a Ruby program to create a new string which is n copies of a given string where n is a non-negative integer.
##Sample Output:
##a
##aa
##aaa
##aaaa
##aaaaa
################################


def newLine(int)
  return 'a' if int ===1
  return 'aa' if int ===2
  return 'aaa' if int ===3
  return 'aaaa' if int ===4
  return 'aaaaa' if int ===5
end

def newLine2(int)
  car = ''
  (1..int).each do |i|
    puts car += 'a'
  end
end

####Recursive!
def newLine3(int)
  return 'a' + "\n" if int === 1
  return newLine3(int-1) + 'a'*int + "\n"
end

def newLine4(str, t)
  return str + "\n" if t === 1
  return newLine4(str, t-1) + str*t + "\n"
end

###response PERO ESTA MALA!!!
def multiple_string(str, n)
  return str*n
end
print multiple_string('a', 1),"\n"
print multiple_string('a', 2),"\n"
print multiple_string('a', 3),"\n"
print multiple_string('a', 4),"\n"
print multiple_string('a', 5),"\n"

#puts newLine(5)
#newLine2(7)
#puts newLine3(7)
puts newLine4('Oscar · ',6), "\n"

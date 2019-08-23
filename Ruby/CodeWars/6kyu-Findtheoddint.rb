=begin 
Find the odd int
Given an array, find the int that appears an odd number of times.
There will always be only one integer that appears an odd number of times.
=end

#def find_it(seq)
  #dup = seq.select{|element| seq.count(element) > 1 }.to_s
  #result = 0
  #dups = seq.group_by{|e| e}.keep_if{|_, e| e.length > 0}
  #dups.each do |x, y|
  #  if (y.length.odd?)
  #    result = x
  #  end
  #end
  #result
  #seq.reduce(:^)
#end

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end
puts find_it([12,1,34,2])
puts find_it([20,1,-1,2,20,-2,3,3,5,20,5,1,2,4,20,4,-1,-2,5])
# => 5
puts find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
# => -1
puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
# => 5
puts find_it([10])
# => 10
puts find_it([1,1,1,1,1,1,10,1,1,1,1])
# => 10


=begin ############################################# OTHERS SOLUTIONS 
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end
----------------------------------------------------------------------
def find_it(seq)
  seq.reduce(:^)
end
----------------------------------------------------------------------
def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end
----------------------------------------------------------------------
def find_it(seq)
  seq.find{|c| seq.count(c).odd? }
end
----------------------------------------------------------------------
def find_it(seq)
  seq.each do |i|
    if seq.count(i) % 2 != 0
      return i
    end
  end
end
----------------------------------------------------------------------
def find_it(seq)
  seq.select { |int| seq.count(int)%2 != 0}.first
end
----------------------------------------------------------------------
def find_it(seq)
  set = Set.new
  seq.each do |item|
    set.include?(item) ? set.delete(item) : set << item
  end
  set.first
end
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------

=end

=begin ############################################# THRASH CAN
num = seq[0]
  indice = 0
  cont = 0
  result = []
  seq.each do |x|
    if (num == x)
      cont += 1
    end
    result[x]= [num, cont]
  end
result.to_s
----------------------------------------------------------------------

=end
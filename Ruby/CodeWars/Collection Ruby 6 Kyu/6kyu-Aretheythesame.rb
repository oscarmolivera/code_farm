=begin 
Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that 
checks whether the two arrays have the "same" elements, with the same multiplicities. 
"Same" means, here, that the elements in b are the elements in a squared, regardless 
of the order.
Examples
Valid arrays

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 
121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. 
It gets obvious if we write b's elements in terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Invalid arrays

If we change the first number to something else, comp may not return true anymore:

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 36100 is not the square of any number of a.
Remarks

a or b might be [] (all languages except R, Shell). a or b might be nil or null or 
None or nothing (except in Haskell, Elixir, C++, Rust, R, Shell, PureScript).

If a or b are nil (or null or None), the problem doesn't make sense so return false.

If a or b are empty then the result is self-evident.

a or b are empty or not empty lists.
=end

def comp(array1, array2)  
  #arr2 = array2.map{|two| Math.sqrt(two)} if !array2.nil?
  #array1.nil? || array2.nil? ? false : array1.map {|one| (one**2.to_f)}.reduce(:+) == arr2.map {|thr| (thr**2.to_f)}.reduce(:+)
  p a1 =  array1&.map { |x| x * x }&.sort
  array2&.sort
end

p comp( [121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
p comp(nil,[])
p comp([2, 2, 3], [4, 9, 9])
p comp([61, 68, 43, 81, 49, 11], [3722, 4624, 1849, 6561, 2401, 121])

=begin ############################################# OTHERS SOLUTIONS 
2)
def comp(a, b)
  a&.map { |x| x * x }&.sort == b&.sort
end
----------------------------------------------------------------------
3)
def comp (array1, array2)
  !array1.nil? && !array2.nil? && array1.sort.zip(array2.sort).all?{|a, b| a**2 == b}
end
----------------------------------------------------------------------
4)
def comp(a, b)
  [a, b].none?(&:nil?) && a.map(&:abs2).sort == b.sort
end
----------------------------------------------------------------------
5)
def comp(array1, array2)

array1.sort.map {|num| num ** 2} == array2.sort
rescue 
false

end
----------------------------------------------------------------------
6)
def comp(a, b)
  a && b ? a.sort.map {|x| x ** 2} == b.sort : false
end
----------------------------------------------------------------------
7)
def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  array1.map {|num| num ** 2}.sort == array2.sort 
end
----------------------------------------------------------------------
8)
def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
end
----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
array1.each do |d|
    array2.each do |lvl|
      if d**2 == lvl
       if !a.include?(lvl)
        puts "ESTE ES D. #{d} | este es D^2: #{d**2} | este es lvl: #{lvl}"
        a.push(lvl)
        b.push(d**2)
       end
      end 
    end
    b.push(d**2)
  end
  p "array1: #{array1. uniq}"
  p "array2: #{array2. uniq}"
  p "a: #{a.uniq}"
  p "b: #{b. uniq}"
  a.uniq.reduce(:+) == array2.uniq.reduce(:+)
  -----------------------------------------
    #aa = array1.map {|t| t**2}.uniq.sort if array1==nil
  #bb = array2.map {|v| Math.sqrt(v).to_i}.uniq.sort if array2 == nil
  #array1.uniq.reduce(:+) == bb.uniq.reduce(:+)

  array1.nil? || array2.nil? ? false : array1.uniq.reduce(:+) == array2.map {|v| Math.sqrt(v).to_i}.uniq.sort.reduce(:+)
  -----------------------------------------
=end
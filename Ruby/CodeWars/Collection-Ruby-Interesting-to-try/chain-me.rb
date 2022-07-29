=begin 
*** = Write a generic function chainer = ***
Write a generic function chainer that takes a starting value, and an array
of functions to execute on it (array of symbols for Ruby).

The input for each function is the output of the previous function (except
the first function, which takes the starting value as its input). Return
the final value after execution is complete.
=end

def add num
  num + 1
end

def mult num
  num * 30 
end

def chain(input, fs)
  arr = []
  arr << send(fs[0], input)
  1.upto(fs.size-1).each { |method| arr << send(fs[method], arr.last) }
  arr.last
end

p chain(2, [:add, :mult])
#=> returns 90

# => 'test ouput'

=begin ############################################# OTHERS SOLUTIONS 
2)
def chain(value, functions)
  functions.reduce(value) { |value, function| send(function, value) }
end

end
----------------------------------------------------------------------
3)
def chain(input, fs)
  # implement the "chain" function
  #each defined method can be passed as a symbol to another method
  #For example def foo(a) puts a end can be passed to another method
  #that accepts a method as an argument:
  #def calling_method(the_method) send(the_method) end
  #Now to pass method foo to calling_method, we write:
  #calling_method(:foo). When method foo was defined, a symbol
  #representation of it, :foo, was also defined and we can use it
  #to refer to method foo when needed
  fs.each {|the_method| input = send(the_method, input)}
  return input  
end
----------------------------------------------------------------------
4)
def chain(input, fs)
  fs.map{|f| input = Object.send(f, input)}.last
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
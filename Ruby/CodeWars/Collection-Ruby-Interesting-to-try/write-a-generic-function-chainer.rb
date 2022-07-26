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
  arr << input
  fs.each do |function|
    p 
    #value = function(arr[0])
    #arr << value
    #arr.shift
  end
  #arr.first
end

p chain(2, [:add, :mult])
#=> returns 90

# => 'test ouput'

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
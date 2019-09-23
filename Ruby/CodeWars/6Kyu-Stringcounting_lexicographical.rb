=begin 
Given a string s of uppercase letters, your task is to determine how many strings t (also uppercase) 
with length equal to that of s satisfy the followng conditions:

    t is lexicographical larger than s, and
    when you write both s and t in reverse order, t is still lexicographical larger than s.

For example:
solve('XYZ') = 5. They are: YYZ, ZYZ, XZZ, YZZ, ZZZ

String lengths are less than 5000. Return you answer modulo 10^9+7 (= 1000000007).

More examples in test cases. Good luck!

=end

def solve(data)

  #STEP 1
  i= 0
  largestI = 0
  while i < data.length  do
=begin
    data[i] < data[i+1] ? largestI = i : i
    largestI < 0 ? "Array Empty" : largestI
    #Step 2

     j = 0
    largestJ = -1
    while j < data.length-1 do
      data[largestI] < data[j] ? largestJ = j : j
      j+= 1
    end
    #STEP 3
    swap(data, largestJ, largestI)
    len = data.length - largestI -1
    nwArr = data.slice!(largestI, len + 1)
    nwArr.reverse()
    #nwArr.each do |n|
    #  data.push(n)
    #end
    data.concat(nwArr)
    puts "#{i} : #{data}"
=end
    i+=1
  end
  #"#{swap(data, largestJ, largestI)}"
end


def swap (arr, i, j )
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
  arr
end

  #puts solve([0,1,2,5,6,8,4,3])
  puts solve([0,1,2])

  #puts solve("XYZ")
  #,5)  
  #puts solve("ABC")
  #,16174)
  #puts solve("ABCD")
  #,402230)
  #puts solve("ZAZ")
  #,25)
  #puts solve("XYZA")
  #,34480)

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
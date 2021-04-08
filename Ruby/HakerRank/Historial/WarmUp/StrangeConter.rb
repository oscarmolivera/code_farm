=begin 
Strange Counter
Bob has a strange counter. At the first second, it displays the number '3'.
Each second, the number displayed by the counter decrements by 1 until it
reaches 1. 
The counter counts down in cycles. In next second, the timer resets to [2 X
the initial number for the prior cycle] and continues counting down. The diagram
below shows the counter values for each time 't' in the first three cycles:

TIME VALUE       TIME VALUE         TIME VALUE
 1     3          4    6             10    12
 2     2          5    5             11    11
 3     1          6    4             12    10
 -     -          7    3             13    09
 -     -          8    2             14    08
 -     -          9    1             15    07
 -     -          -    -             ...   ...
 -     -          -    -             21    01
Find and print the value displayed by the counter at time 't'.
Function Description
Complete the strangeCounter function in the editor below. It should return the
integer value displayed by the counter at time 't'.
strangeCounter has the following parameter(s):
  t: an integer

=end

def strangeCounter(t)

end

p strangeCounter(4)
=begin ############################################# OTHERS SOLUTIONS 
2)
while total < t:
      total += n
      n *= 2
  n /= 2
  print total - n + (n-t)+1
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
9)

------------------------------  ----------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
=begin 
Gary is an avid hiker. He tracks his hikes meticulously, paying close attention
to small details like topography. During his last hike he took exactly 'n'
steps. For every step he took, he noted if it was an uphill, U, or a downhill, D
step. Gary's hikes start and end at sea level and each step up / down represents
a 1 unit change in altitude. We define the following terms:
1)  A mountain is a sequence of consecutive steps above sea level, starting with
a step up from sea level and ending with a step down to sea level.
2) A valley is a sequence of consecutive steps below sea level, starting with a
step down from sea level and ending with a step up to sea level.

Given Gary's sequence of up and down steps during his last hike, find and print
the number of valleys he walked through.

For example, if Gary's path is s = [DDUUUUDD], he first enters a valley units
deep. Then he climbs out an up onto a mountain units high. Finally, he returns
to sea level and ends his hike.

Function Description
Complete the countingValleys function in the editor below. It must return an
integer that denotes the number of valleys Gary traversed.

countingValleys has the following parameter(s):

    n: the number of steps Gary takes
    s: a string describing his path


=end

def countingValleys(n, s)
  counter = 0
  mountain = 0
  valley = 0
  mountains_n_valleys= []
  s.split('').each do |step|
    step == 'U' ? counter += 1 : counter -=1
    mountain += counter if counter > mountain 
    valley -= counter if counter < valley

    if counter == 0
      mountains_n_valleys << 'M' if mountain != 0
      mountains_n_valleys << 'V' if valley != 0
      valley = 0
      mountain = 0
    end
  end
  mountains_n_valleys.count('V')
end


p countingValleys(8, "UDDDUDUU")
#"010-1-2-1-2-10" => 1(1) 2(-1-2-1-2-1)
p countingValleys(12, "DDUUDDUDUUUD")
#"0-1-2-10-1-2-1-2-1010"  => 1(-1-2-1) 2(-1-2-1-2-1) 3(1)
p countingValleys(10, "UDUUUDUDDD")
#"01012323210" => 1() 2()
p countingValleys(100, "DDUUDDDUDUUDUDDDUUDDUDDDUDDDUDUUDDUUDDDUDDDUDDDUUUDUDDDUDUDUDUUDDUDUDUDUDUUUUDDUDDUUDUUDUUDUUUUUUUUU")
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
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
  #s.scan(/UU+/).count()
  # p s.scan(/UU+/)
 # p s.scan(/DD+/)
 # p "-------------"
 # ""
 # s.split('').each[{}
 #p s.scan(/D+/).count() 
 #p s.scan(/U+/).count() 
 #############([^0.0$]+)#############
 #arr = [0]
 #arr2 =[]
 #cont = 0
 #s.split('').each do |g|
 # g == 'U' ? cont += 1 : cont -= 1
 # arr << cont
 #end

 #arr.each do |n| 

 #end
 #arr.join('').scan(/([^0.0$]+)/).each do |h|
 # p  h
 #end
 # arr2

 ---------------------------------
   arr = [0]
  arr2 = []
  cont = 0
  s.split('').each {|g| g == 'U' ? arr << cont += 1 : arr << cont -= 1}
  p arr.join('')
  arr.join('').scan(/([^0.0$]+)/).each do |h|
    "gg: #{h[0].count('-') }"
    h[0].count('-') != 0 ? arr2 << h[0].count('-') : arr2
  end
  arr2.length()
=end
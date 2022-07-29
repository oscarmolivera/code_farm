=begin 
You have an 8-wind compass, like this: (image)
You receive the direction you are facing (one of the 8 directions: N, NE, E, SE, S, SW, W, NW) and a
certain degree to turn (a multiple of 45, between -1080 and 1080); positive means clockwise, and
negative means counter-clockwise.

Return the direction you will face after the turn.
Examples

"S",  180  -->  "N"
"SE", -45  -->  "E"
"W",  495  -->  "NE"

=end

DIRECTIONS = {'N'=> 0,'NE' => 45,'E'  => 90,'SE' => 135,'S'  => 180,'SW' => 225,'W'  => 270,'NW' => 315 }

def direction(facing, turn)
  DIRECTIONS.invert[(DIRECTIONS[facing] + turn) % 360]
end

p direction("S", 180)
#=> "N"
p direction("SE", -45)
#=> "E"
p direction("W", 495)
#=> "NE"
p direction("E", -900)
#=> "W"
p direction("N", 405)
#=> "NE"
p direction("NW", -135)
#=> "S"
p direction("NE", -675)
#=> "E"


=begin ############################################# OTHERS SOLUTIONS 
2)
def test(str)
def direction(facing, turn)
  arr = ["N", "NE", "E", "SE", "S", "SW", "W", "NW"]
  arr[(arr.index(facing) + turn / 45) % 8]
end
----------------------------------------------------------------------
3)
DIRECTIONS = {'N'=> 0,'NE' => 45,'E'  => 90,'SE' => 135,'S'  => 180,'SW' => 225,'W'  => 270,'NW' => 315 }

def direction(facing, turn)
  DIRECTIONS.invert[(DIRECTIONS[facing] + turn) % 360]
end

----------------------------------------------------------------------
4)
def direction(facing, turn)
  compass = {"N"=>1, "NE"=>2, "E"=>3, "SE"=>4, "S"=>5, "SW"=>6, "W"=>7, "NW"=>8}
  flag = turn < 0 ? true : false
  trn = (turn / 45).abs

  while trn > 8 
    trn -= 8 
  end
  dir = flag ? compass[facing] - trn : compass[facing] + trn 
  if flag
    if dir > 0
      compass.invert[dir] unless dir > 8
    else
      compass.invert[dir + 8]
    end
  else
    dir > 8 ? compass.invert[dir - 8]  : compass.invert[dir]
  end
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
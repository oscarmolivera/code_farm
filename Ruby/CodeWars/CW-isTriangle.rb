=begin 
  implements a methos that accepsts 3 integhers values a, b, c. The method should return true 
  if a triangle can be built with tha sides of the given length and false in any other caset.timestamps
  In this case, all triangles must have surface greater than 0t.timestamps

=end

def isTriangle(a,b,c)
  return a+b >c && b+c > a && a+c > b
end

puts isTriangle(1,2,3)
puts isTriangle(2,1,1)

=begin ############################################# OTHERS SOLUTIONS 
2)
function isTriangle(a,b,c){
  if(a >0 && b>0 && c>0){
      if ((a+b > c) && (b+c > a) && (a+c >b)){
        return true;
      } else{
        return false;
      }
  } else{
    return false;
  }
} 
=end
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
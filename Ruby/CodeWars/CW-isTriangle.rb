def isTriangle(a,b,c)
  return a+b >c && b+c > a && a+c > b
end

puts isTriangle(1,2,3)
puts isTriangle(2,1,1)


=begin ### OTHERS SOLUTIONS   =end
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
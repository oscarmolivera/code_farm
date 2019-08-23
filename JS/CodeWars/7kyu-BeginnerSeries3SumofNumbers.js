/* 
Beginner Series #3 Sum of Numbers 
Given two integers a and b, which can be positive or negative, 
find the sum of all the numbers between including them too and 
return it. If the two numbers are equal return a or b.

Note: a and b are not ordered!
Examples

get_sum(1, 0) == 1   # 1 + 0 = 1
get_sum(1, 2) == 3   # 1 + 2 = 3
get_sum(0, 1) == 1   # 0 + 1 = 1
get_sum(1, 1) == 1   # 1 Since both are same
get_sum(-1, 0) == -1 # -1 + 0 = -1
get_sum(-1, 2) == 2  # -1 + 0 + 1 + 2 = 2
*/

function GetSum( a,b )
{
  let min = 0, max = 0, arr = [];
  if (a < b){
    min = a, max = b;
  }else{
    min = b, max = a;
  }
  for (i = min; i < max+1; i++ ){
    arr.push(i);
  }
  let res = arr.reduce((el, me) => el+me, 0);
  return res;
}

console.log(GetSum(0,1));
// =>1
console.log(GetSum(0,-1));
// =>-1
console.log(GetSum(1,2));
// =>3
console.log(GetSum(5,-1));
// =>14

/* ############################################# OTHERS SOLUTIONS 
const GetSum = (a, b) => {
  let min = Math.min(a, b),
      max = Math.max(a, b);
  return (max - min + 1) * (min + max) / 2;
}
----------------------------------------------------------------------
function GetSum( a,b )
{
   if (a == b) return a;
   else if (a < b) return a + GetSum(a+1, b);
   else return a + GetSum(a-1,b);
}
----------------------------------------------------------------------
function GetSum(a,b)
{
  return (Math.abs(a - b) + 1) * (a+b) / 2;
}
----------------------------------------------------------------------
function GetSum( a,b ) {
   var result = 0;
   var bigger = a > b ? a : b;
   var smaller = a > b ? b : a;
   for (var i = smaller; i <= bigger; i++) { result += i }
   return result
}
----------------------------------------------------------------------
function GetSum( a,b )
{
   if (a == b) return a;
   else if (a < b) return a + GetSum(a+1, b);
   else return a + GetSum(a-1,b);
}
----------------------------------------------------------------------
const GetSum= (a, b, x=Math.min(a,b), y=Math.max(a,b)) => (y-x+1)*(x+y)/2
----------------------------------------------------------------------
function GetSum(a, b) {
   return a > b ? GetSum(b, a) : (b - a + 1) * (b + a) / 2;
}
----------------------------------------------------------------------
function GetSum( a,b )
{
  tmp = 0;
  
  if(a < b)
    while(a <= b) tmp += a++;
  else
    while(a >= b) tmp += a--;
      
  return tmp;
}
----------------------------------------------------------------------
function GetSum(a, b) {
  return (a + b) * (Math.abs(a - b) + 1) / 2;
}
----------------------------------------------------------------------

----------------------------------------------------------------------

*/

/* THRASH CAN ****************************************************

*/
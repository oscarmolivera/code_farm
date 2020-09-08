/* 
Write a function called repeatString which repeats the given String src exactly count times.

repeatStr(6, "I") // "IIIIII"
repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"
*/

function repeatStr (n, s) {
  let array = [];
  for(let i= 0; i<n; i++){
    array.push(s)
  }
  return array.join('');
}
//console.log();

console.log(repeatStr(3, "*"));
// => "***"
console.log(repeatStr(5, "#"));
// => "#####"
console.log(repeatStr(2, "ha "));
// => "ha ha "

/* ############################################# OTHERS SOLUTIONS 
2)
function repeatStr (n, s) {
  return s.repeat(n);
}
----------------------------------------------------------------------
3)
repeatStr = (n, s) => s.repeat(n)
----------------------------------------------------------------------
4)
function repeatStr (n, s) {
var str="";
for(var i=0; i < n; i++)
  str+=s;
  return str;
}
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

*/

/* THRASH CAN ****************************************************

*/
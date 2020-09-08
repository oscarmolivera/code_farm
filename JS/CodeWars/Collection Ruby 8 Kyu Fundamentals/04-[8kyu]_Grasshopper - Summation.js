/* 
 Grasshopper - Summation
 Write a program that finds the summation of every number from 1 to num. 
 The number will always be a positive integer greater than 0.
*/
var summation = function (num) {
  var sum = 0;
  for(let i = 0; i < num+1; i++){
    sum += i
  }
  return sum;
}

//console.log();

console.log(summation(1));
// => 1
console.log(summation(8));
// => 36
/* ############################################# OTHERS SOLUTIONS 
2)
const summation = n => n * (n + 1) / 2;
----------------------------------------------------------------------
3)
var summation = function f(num) {
  return num ? num + f(num-1) : 0;
}
----------------------------------------------------------------------
4)
Ruby/CodeWars/Collection Ruby 8 Kyu Fundamentals/04-[8kyu]_Grasshopper - Summation.rb
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
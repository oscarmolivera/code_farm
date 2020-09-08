/* 
Find the stray number 
You are given an odd-length array of integers, in which all of them are the same, except for one single number.
Complete the method which accepts such an array, and returns that single different number.
The input array will always be valid! (odd-length >= 3)
Examples
[1, 1, 2] ==> 2
[17, 17, 3, 17, 17, 17, 17] ==> 3
*/

function stray(numbers) {
  return numbers.find((item, index) => numbers.filter(el => el == item).length % 2)
}


console.log( stray([1, 1, 2]));
// => 2
console.log( stray([17, 17, 17, 17, 17, 1, 17]));
// => 1
console.log( stray([1, 1, 1, 1, 8, 8, 8, 8, 1, 1, 9, 1, 1, 1, 1 ]));
// => 9
/* ############################################# OTHERS SOLUTIONS 
function stray(numbers){
  for (var i in numbers){
     if (numbers.indexOf(numbers[i]) === numbers.lastIndexOf(numbers[i])){return numbers[i]}
  }
}
----------------------------------------------------------------------
const stray = nums => nums.reduce((a, b) => a ^ b);
----------------------------------------------------------------------
function stray(numbers) {
  var a = numbers.sort();
  
  if(a[0] != a[1]) {
    return a[0]
  } 
  return a[a.length-1]
}
----------------------------------------------------------------------
function stray(nums){
  let max = Math.max(...nums);
  let min = Math.min(...nums);
  return nums.filter(x => x == max).length == 1 ? max : min
}
----------------------------------------------------------------------
const stray = arr => ~~arr.filter(x=>arr.indexOf(x)===arr.lastIndexOf(x)).join('')
----------------------------------------------------------------------
function stray(numbers) {
  return numbers.reduce((x, y) => x ^ y);
}
----------------------------------------------------------------------
function stray(numbers) {
  var num = numbers.sort(function(a,b){return a-b;});
  return (num[0] === num[1]) ? num[num.length-1] : num[0];
}
----------------------------------------------------------------------
const stray = a => a.reduce((r, e) => r ^ e, 0);
----------------------------------------------------------------------
const stray = numbers => {
  const uniqueValues = [...new Set(numbers)]
  return numbers.filter(num => num === uniqueValues[0]).length > 1 ? uniqueValues[1] : uniqueValues[0]
}
----------------------------------------------------------------------
function stray(numbers) {
  numbers.sort(function(a, b){return a-b;});
  let aux = numbers[0] === numbers[1];
  return !aux ? numbers[0] : numbers[numbers.length - 1];
}
----------------------------------------------------------------------

*/
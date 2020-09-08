/* 
Find the odd int
Given an array, find the int that appears an odd number of times.
There will always be only one integer that appears an odd number of times.
*/

function findOdd(seq) {
  item = 0;
  count = 0;
  odd = 1000;
  let distinct = [... new Set(seq)];
  distinct.forEach(el => 
    {
      seq.forEach(ar =>{
        if(el === ar){
          count += 1;
        }
      });
      item =  ( count & 1 ) ? el : 100;
      if (item != 100){
        odd = item;
      }
      count = 0;
    });
    return odd;
}

console.log(findOdd([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]));
//# => 5)
console.log(findOdd([1,1,2,-2,5,2,4,4,-1,-2,5]));
//# => -1)
console.log(findOdd([20,1,1,2,2,3,3,5,5,4,20,4,5]));
//# => 5)
console.log(findOdd([10]));
//# => 10)
console.log(findOdd([1,1,1,1,1,1,10,1,1,1,1]));
//# => 10)
console.log(findOdd([5,4,3,2,1,5,4,3,2,10,10]));
//# => 1)

/* ############################################# OTHERS SOLUTIONS 
const findOdd = (xs) => xs.reduce((a, b) => a ^ b);
----------------------------------------------------------------------
function findOdd(A) {
  var obj = {};
  A.forEach(function(el){
    obj[el] ? obj[el]++ : obj[el] = 1;
  });
  
  for(prop in obj) {
    if(obj[prop] % 2 !== 0) return Number(prop);
  }
}
----------------------------------------------------------------------
function findOdd(A) {
  return A.reduce(function(c,v){return c^v;},0);
}
----------------------------------------------------------------------
function findOdd(arr) {
  var result, num = 0;

  arr = arr.sort();
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] === arr[i+1]) {
      num++;
    } else {
      num++;
      if (num % 2 != 0) {
        result = arr[i];
        break;
      }
    }
  }
  return result;
}
----------------------------------------------------------------------
function findOdd(arr) {
  return arr.find((item, index) => arr.filter(el => el == item).length % 2)
}
----------------------------------------------------------------------
function findOdd(A) {
  //happy coding!
  var x = 0;
  for (var i = 0; i < A.length; i++) {
    x = x ^ A[i];
  }
  return x;
}
----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

*/
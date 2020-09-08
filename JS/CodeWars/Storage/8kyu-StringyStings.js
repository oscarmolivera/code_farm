/* 
Write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.
the string should start with a 1.
a string with size 6 should return :'101010'.
with size 4 should return : '1010'.
with size 12 should return : '101010101010'.
The size will always be positive and will only use whole numbers.
*/

function stringy(size) {
  let arr = [];
  for(let i=1;i<=size;i++){
    arr.push(i%2);
  }
  return arr.join('');
}
console.log(stringy(0));
console.log(stringy(3));
console.log(stringy(5));
console.log(stringy(12));
console.log(stringy(26));
console.log(stringy(28));
/* ############################################# OTHERS SOLUTIONS 
2)
const stringy = size => "10".repeat(size).slice(0,size);
----------------------------------------------------------------------
3)
const stringy = size => Array.from(Array(size), (v, i) => +!(i % 2)).join('');
----------------------------------------------------------------------
4)
const stringy = x => ''.padStart(x,'10');
----------------------------------------------------------------------
5)
function stringy(size) {
  return new Array(size).join('10').substr(0,size)   
}
----------------------------------------------------------------------
6)
function stringy(size) {
  return '10'.repeat(Math.floor(size / 2)) + (size % 2 ? '1' : '');
}
----------------------------------------------------------------------
7)
const stringy = (size) => String.repeat(10, (size + 1) >> 1).slice(0, size)
----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

*/

/* THRASH CAN ****************************************************

*/
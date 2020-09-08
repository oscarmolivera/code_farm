/***
Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer. 
Square all numbers k (0 <= k <= n) between 0 and n. 
Count the numbers of digits d used in the writing of all the k**2. 
Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.
***/

function nbDig(n, d) {
  let count = 0;
  for (let i = 0; i < n + 1; i++) {
    count += ((i * i).toString().split('')).filter((x) => { return x === d.toString() }).length;
    //count += arryNumber;
  }
  return count;
}
/** ============nabi, dubdjon, AhmadEliwa, mango1980, devosama77, achrefkson
function nbDig(n, d) {
  var res = 0;
  for (var g = 0; g <= n; g++) {
    var square = (g * g + "").split("");
    square.forEach((s) => s == d ? res++ : null)
  } return res;
}
*/

/** =========== colbydauph, devosma100@gmail.com 
const nbDig = (n, d) => {
  let re = new RegExp(d, 'g');
  return Array(...Array(n + 1))
    .reduce((s, v, i) => s + ((i * i + '').match(re) || []).length, 0);
}
*/

console.log(nbDig(25, 1));
console.log(nbDig(5750, 0));
//4700)
console.log(nbDig(11011, 2));
//9481)
console.log(nbDig(12224, 8));
//7733)
console.log(nbDig(11549, 1));
//11905)*/


/*
CODE TRASH CAN
==============
for(let i = 0; i< n; i++){
   let strNum = (i*i).toString();
   strNum.map(function(x) => (console.log(x)));
   console.log(strNum);
   count += 1;
 }
 -------------------
 x == d.toString()
 ------------------
*/
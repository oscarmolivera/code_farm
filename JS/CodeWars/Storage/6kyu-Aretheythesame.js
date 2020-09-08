/* 
Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that 
checks whether the two arrays have the "same" elements, with the same multiplicities. 
"Same" means, here, that the elements in b are the elements in a squared, regardless 
of the order.
Examples
Valid arrays

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 
121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. 
It gets obvious if we write b's elements in terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Invalid arrays

If we change the first number to something else, comp may not return true anymore:

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 36100 is not the square of any number of a.
Remarks

a or b might be [] (all languages except R, Shell). a or b might be nil or null or 
None or nothing (except in Haskell, Elixir, C++, Rust, R, Shell, PureScript).

If a or b are nil (or null or None), the problem doesn't make sense so return false.

If a or b are empty then the result is self-evident.

a or b are empty or not empty lists.
*/

function comp(array1, array2){
/*   if(array1 != null && array2 != null){
    if (!array1.length && !array2.length){ return true;}
    aa = array1.map((x) => (x*x)).sort((a,b)=>a-b);
    bb = array2.sort((a,b)=>a-b);
    return  aa.length === bb.length && aa.every((value, index) => value === bb[index]);
  } 
  else {
    return false;
  } */

  const index = array2.indexOf(Math.pow(item, 2))
   return index > -1
}


console.log(comp([ 4, 4 ], [ 1, 31 ]));
//console.log();
console.log(comp( [121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]));
// true
//console.log(comp(null,[]));
// false
//console.log(comp([2, 2, 3], [4, 9, 9]));
// false
//console.log(comp([61, 68, 43, 81, 49, 11], [3722, 4624, 1849, 6561, 2401, 121]));
// false


/* ############################################# OTHERS SOLUTIONS 
2)
function comp(array1, array2) {
  if(array1 == null || array2 == null) return false;
  array1.sort((a, b) => a - b); 
  array2.sort((a, b) => a - b);
  return array1.map(v => v * v).every((v, i) => v == array2[i]);
}
----------------------------------------------------------------------
3)
const comp = (array1, array2) => 
  Array.isArray(array1) &&
  Array.isArray(array2) &&
  array1.every(item => {
    const index = array2.indexOf(Math.pow(item, 2))
    return index > -1 ? array2.splice(index, 1) : false
  })
----------------------------------------------------------------------
4)
function comp(a, b) {
  return !!a && !!b && a.map(x => x*x).sort().join() == b.sort().join();
}
----------------------------------------------------------------------
5)
function comp(a1, a2){
  if (a1==null || a2==null) return false;
  a1=a1.sort(function(a,b){return b<a});
  a2=a2.sort(function(a,b){return b<a});
  for (var i in a1) if (Math.pow(a1[i],2)!=a2[i]) return false;
  return true;
}
----------------------------------------------------------------------
6)
function comp(array1, array2) {
  let arr1 = array1? array1.map(e => e * e).sort((a, b) => a - b): 1;
  let arr2 = array2? array2.sort((a, b) => a - b).join(''): 1;
  return arr1.join('') == arr2;
}
----------------------------------------------------------------------
7)
function comp(a1, a2){
  return a2!=null&&a1.map(x=>x*x).sort().join('-')==a2.sort().join('-')
}
----------------------------------------------------------------------
8)
function comp(a, b) {
    if (!a || !b || a.length !== b.length) return false;
    return a.map(x => x * x).sort().toString() === b.sort().toString();
}
----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

*/

/* THRASH CAN ****************************************************

*/
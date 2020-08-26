/* 
 Counting sheep...
 Consider an array/list of sheep where some sheep may be missing from
 their place. We need a function that counts the number of sheep present
 in the array (true means present).
*/

var array1 = [true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true ];


function countSheeps(arrayOfSheep) {
  let count = 0;
  for(i=0; i<arrayOfSheep.length; i++){
    if (arrayOfSheep[i]==true){
      count += 1;
    }
  }
  return count;
}
console.log(countSheeps(array1));
// => 17, "There are 17 sheeps in total"));

/* ############################################# OTHERS SOLUTIONS 
2)
function countSheeps(arrayOfSheeps) {
  return arrayOfSheeps.filter(Boolean).length;
}
----------------------------------------------------------------------
3)
let countSheeps = x => x.filter( s => s ).length;
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

*/

/* THRASH CAN ****************************************************

*/
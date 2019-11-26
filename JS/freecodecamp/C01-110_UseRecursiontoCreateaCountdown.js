/*
We have defined a function called countdown with two parameters. 
The function should take an array in the myArray parameter and 
append the numbers n through 1 based on the n parameter.
For example, calling this function with n = 5 will pad the array 
with the numbers [5, 4, 3, 2, 1] inside of it. Your function must 
use recursion by calling itself and must not use loops of any kind. 

*/
function countdown(myArray, n){
  if (n < 0){
    return [];
  }else{
    if(n ==0){
      return 1;
    }else{
      let numb = countdown(myArray, n-1)
      myArray.unshift(n);
    }
    return myArray;
  }
}
myArray = [];
console.log(countdown(myArray, 10));
// # => should contain [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
myArray = [];
console.log(countdown(myArray, 5));
// # => should contain [5, 4, 3, 2, 1]
myArray = [];
console.log(countdown(myArray, -1));
// # => should contain []

/* ############################################# OTHERS SOLUTIONS 
2)

----------------------------------------------------------------------
3)

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
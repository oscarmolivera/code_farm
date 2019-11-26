/* 
We have defined a function named rangeOfNumbers with two parameters. 
The function should return an array of integers which begins with a 
number represented by the startNum parameter and ends with a number 
represented by the endNum parameter. The starting number will always 
be less than or equal to the ending number. Your function must use 
recursion by calling itself and not use loops of any kind. It should 
also work for cases where both startNum and endNum are the same.

*/

function rangeOfNumbers(startNum, endNum)   {
  if (startNum == endNum){
    return [startNum];
  } else{
    var numb = rangeOfNumbers(startNum + 1, endNum);
    numb.unshift(startNum);
    return numb;
  }
}

console.log(rangeOfNumbers(1, 5));
// # => should return [1, 2, 3, 4, 5].
console.log(rangeOfNumbers(6, 9));
// # => should return [6, 7, 8, 9].
console.log(rangeOfNumbers(4, 4));
// # => should should return [4].


/* ############################################# OTHERS SOLUTIONS 
2)
if (n === 1) {
    return [1];
  } else {
    var numbers = count(n - 1); 
    numbers.push(n);
    return numbers;
  }
  return 0;

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
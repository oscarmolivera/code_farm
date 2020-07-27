/* 
Given the triangle of consecutive odd numbers:
1                   1
2                3     5
3             7     9     11
4         13    15    17     19
5      21    23    25    27    29
6   31    33    35    37    39    41
7 43   45    47    49    51    53    55
...
Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

rowSumOddNumbers(1); # 1
rowSumOddNumbers(2); # 3 + 5 = 8
*/

function rowSumOddNumbers(n) {
	return n**3;
}

console.log(rowSumOddNumbers(1));
// => 1
console.log(rowSumOddNumbers(2));
// => 8
console.log(rowSumOddNumbers(3));
// => 27
console.log(rowSumOddNumbers(4));
// => 64
console.log(rowSumOddNumbers(5));
// => 125
console.log(rowSumOddNumbers(6));
// => 216
console.log(rowSumOddNumbers(13));
// => 2197
console.log(rowSumOddNumbers(19));
// => 6859
console.log(rowSumOddNumbers(41));
// => 68921

/* ############################################# OTHERS SOLUTIONS 
2)
function rowSumOddNumbers(n) {
  return Math.pow(n, 3);
}
----------------------------------------------------------------------
3)
function rowSumOddNumbers(n) {
  var start = n * n - n + 1;
  var result = 0;  
  
  for(i = 0; i < n; i++)
  {
    result =  result + (start + (i*2));
  }
    
   return result;
}
----------------------------------------------------------------------
4)
const rowSumOddNumbers=n=>n**3;
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
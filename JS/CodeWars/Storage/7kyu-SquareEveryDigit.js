/*
Square Every Digit
Welcome. In this kata, you are asked to square every digit of a number.
For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
Note: The function accepts an integer and returns an integer
*/

function squareDigits(num){
  return parseInt(((num.toString()).split('')).map(x => (x*x)).join(''));
}

/* ############################################# OTHERS SOLUTIONS 
const findOdd = (xs) => xs.reduce((a, b) => a ^ b);
----------------------------------------------------------------------
function squareDigits(num){
  return Number(('' + num).split('').map(function (val) { return val * val;}).join(''));
  
}
----------------------------------------------------------------------
function squareDigits(num){
  var array = num.toString().split('').map( function(int) {
    var i = parseInt(int);
    return i * i;
  });
  
  return parseInt(array.join(""));
}
----------------------------------------------------------------------
function squareDigits(num){
    var string = num.toString();
    var results = [];
    for (var i = 0; i < string.length; i++){
        results[i] = string[i] * string[i];
    }
    return Number(results.join(''));
};
----------------------------------------------------------------------
function squareDigits(num){
  return +num.toString().split('').map(i => i*i).join('');
}
----------------------------------------------------------------------
function squareDigits(num){
  return +String(num).split('').map(function(num){return +num * +num;}).join('');
}
----------------------------------------------------------------------
const squareDigits = (num) => Number((num + '').split("").map(c => c *c).join(""));
----------------------------------------------------------------------

*/
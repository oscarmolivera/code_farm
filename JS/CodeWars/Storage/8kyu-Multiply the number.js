/*
  Multiply the number
  Jack really likes his number five: the trick here is that you have to multiply 
  each number by 5 raised to the number of digits of each numbers, so, for example:

  multiply(3)==15
  multiply(10)==250
  multiply(200)==25000
  multiply(0)==0
  multiply(-3)==-15
*/

function multiply(number){
  let pot = (number.toString().match(/\d+/).toString().length);
  return number * Math.pow(5, pot);
}

console.log(multiply(10));
// => ,250
console.log(multiply(5));
// => ,25
console.log(multiply(200));
// => ,25000
console.log(multiply(0));
// => ,0
console.log(multiply(-2));
// => ,-10

/* ############################################# OTHERS SOLUTIONS 
function multiply(number) {
  return number * Math.pow(5, Math.abs(number).toString().length);
}

const multiply = number => number * Math.pow(5, (Math.abs(number) + "").length);

const multiply = (number) => number *  Math.pow(5,  ((''+number).match(/\d/g) || []).length);

const multiply = n => n * Math.pow(5,(Math.abs(n)+'').length)

const multiply = (number) => number * Math.pow(5,Math.abs(number).toString().length);
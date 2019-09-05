function reverseString(str) {
  let arr = str.split('');
  let rStr = [];
  for(let i = 0; i < str.length; i++){
    rStr.push(arr.pop());
  }
  //let str2 = rStr.join(''); 
  return rStr.join('');
}

console.log(reverseString("Olivera"));

/*
function reverseString(str) {
  var doubles = str.map(function(x) {return x * 2;});
  return doubles;
}

console.log(reverseString([2,3,4,5,6,7,8,9]));

function reverseString2(str) {
  let arr = str.split("")
  arr = arr.reverse();
  return arr.join("");
}
console.log(reverseString2('hello'));

*/
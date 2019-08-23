function totalNumbersofDistinct(seq) {
  var len = seq.filter(function(val, i, arr) { 
    return arr.indexOf(val) === i;
}).length;
return len;
}


function whoarethedistinct(seq) {
  let distinct = [... new Set(seq)];
  return distinct;
}

console.log(findOdd([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]));
//# => 8)
console.log(findOdd([1,1,2,-2,5,2,4,4,-1,-2,5]));
//# => 6)
console.log(findOdd([20,1,1,2,2,3,3,5,5,4,20,4,5]));
//# => 6)
console.log(findOdd([10]));
//# => 1)
console.log(findOdd([1,1,1,1,1,1,10,1,1,1,1]));
//# => 2)
console.log(findOdd([5,4,3,2,1,5,4,3,2,10,10]));
//# => 6)
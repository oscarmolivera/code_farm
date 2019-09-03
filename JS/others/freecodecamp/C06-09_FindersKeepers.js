function findElement(arr, func) {
  //let num = arr.filter(number => (func(number)) );
  //return num;
  return arr.filter(number => (func(number)) )[0];
}

console.log(findElement([1, 2, 3, 4], num => num % 2 === 0));
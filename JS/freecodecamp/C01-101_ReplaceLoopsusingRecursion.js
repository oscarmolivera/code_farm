function sum(arr, n) {
  // Only change code below this line
  //if (n <= 0){
  //  return 1;
  //}else{
  //  console.log(` n = ${n}`)
  //  console.log(` arr[n]=${arr[n]}`)
  //  return sum(arr, n-1) + arr[n] +1;
 // }
 return n <= 0 ?  1 : sum(arr , n-1) + arr[n]+1;
  // Only change code above this line
}
 

console.log(sum([1], 0));
// should equal 1.
console.log(sum([2, 3, 4], 1));
// should equal 5.


/*

  ----------------------------------

--------------------------------*/

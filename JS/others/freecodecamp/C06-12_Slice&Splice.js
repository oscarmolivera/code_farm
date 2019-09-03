function frankenSplice(arr1, arr2, n) {
  let frank = [...arr2];
  for(let i = 0; i<arr1.length; i++){
    frank.splice(n+i, 0, arr1[i]);
  }  
  return frank;
}
console.log(frankenSplice([1, 2, 3], [4, 5], 1)); 
// should return [4, 1, 2, 3, 5].
console.log(frankenSplice([1, 2], ["a", "b"], 1)); 
// should return ["a", 1, 2, "b"].
console.log(frankenSplice(["claw", "tentacle"], ["head", "shoulders", "knees", "toes"], 2)); 
// should return ["head", "shoulders", "claw", "tentacle", "knees", "toes"].
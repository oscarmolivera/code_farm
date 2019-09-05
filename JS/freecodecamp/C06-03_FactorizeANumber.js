function factorialize(num) {
  if(num <= 0){
    return 1;
  }else{
    let nb = [];
    for (let i = 1; i<=num; i++){
      nb.push(i);
    }
    return nb.reduce((a, b) => a * b);
  }
}

console.log(factorialize(8));

/*

function numFactorial(num){
  var result = 1;
  for(var i = 1; i <=num;  i++){
    result *= i;
  }
  return result;
  
}
*/
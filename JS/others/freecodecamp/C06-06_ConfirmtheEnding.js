function confirmEnding(str, target) {
  let rest = str.substring(0, (str.length-target.length));
  let tail = str.substring((rest.length), (rest.length+target.length));
  return (target === tail)
}

console.log(confirmEnding("Bastian", "n"));
console.log(confirmEnding("Walking on water and developing software from a specification are easy if both are frozen", "specification"));
console.log(confirmEnding("Open sesame", "same"));

/* ############################################# OTHERS SOLUTIONS 
2)
//Esta era una prueba pero no sirvio para todas las opciones
  if (str.split(' ').length > 1){
    //return str.split(' ')[str.length -1] == target;
    let phrase =str.split(' ')
    return phrase[phrase.length - 1]  == target;
  }else{
    return str.split('')[str.length -1] == target;
  }
----------------------------------------------------------------------
*/
function mutation(arr) {
  let result = [];
  let word0 = arr[0].split(''); //hello
  let word1 = arr[1].split(''); //hey
  word1.forEach(function(item1){
    for(let i = 0;i < word0.length; i++){
      if(item1.toLowerCase() === word0[i].toLowerCase()){
        result.push(item1);
        break;
      }
    }
  });
  return (arr[1] === result.join(''));
}
console.log(mutation(["Ahtello", "hey"]));
// should return false.
console.log(mutation(["hello", "hey"]));
// should return false.
console.log(mutation(["hello", "Hello"]));
// should return true.
console.log(mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"]));
// should return true.
console.log(mutation(["Mary", "Army"]));
// should return true.
console.log(mutation(["Mary", "Aarmy"]));
// should return true.
console.log(mutation(["Alien", "line"]));
// should return true.
console.log(mutation(["floor", "for"]));
// should return true.
console.log(mutation(["hello", "neo"]));
// should return false.
console.log(mutation(["voodoo", "vxl"]));
// should return false.

/*
------------------------------------------
let cont = 0;
  let word1 = arr[0].split('');
  let word2 = arr[1].split('');
  word2.forEach(function(item2){
    word1.forEach(function(item1){
      if(item2.toLowerCase() === item1.toLowerCase()){
        console.log('Print item2: ' + `${item2}`);
        console.log('Print item1: ' + `${item1}`);
        cont += 1;
      }
    });
  });
  if (arr[1].length === cont){
    console.log(`${arr[1].length}`);
    console.log(`${cont}`);
    return true;
  }else{
    console.log(`${arr[1].length}`);
    console.log(`${cont}`);
    return false;
  }
  ------------------------------------------
   let word1 = arr[0];
  let word2 = '[('+ arr[1]+')]';
  let word3 = RegExp(word2, 'g');
  //let word4 = RegExp(word2, g);
  //console.log(word2);
  //console.log(word3.toString());
  //console.log(word4.toString());
  //console.log(/[(qrstu)]/g.test(word1));
  console.log(word3.test(word1));
  //return 1;  
  
  
  
  
  
  

*/
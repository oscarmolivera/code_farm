function findLongestWordLength(str) {
  if(str.length < 1){
    return 0;
  }else{
    let words = str.split(' ');
    letlongestWord= words[0].length;
    for(let w = 0; w < words.length; w++){
      if(words[w].length > longestWord){
        longestWord = words[w].length;
      }
    }
    return longestWord;
  }
}

console.log(findLongestWordLength("The quick brown fox jumped over the lazy dog"));
console.log(findLongestWordLength("What is the average airspeed velocity of an unladen swallow"));

/*
function findLongestWordLength(str) {
  let arr = str.split(' ');
  let longest = arr[0].length;
  for(let i = 1; i<arr.length; i++){
    console.log(arr[i].length);
    console.log(longest);
    
    if (arr[i].length > longest){
      longest = arr[i].length;
    }
  }
  return console.log(longest);
  //return str.length;
}

findLongestWordLength("The quick brown fox jumped over the lazy dog");
*/
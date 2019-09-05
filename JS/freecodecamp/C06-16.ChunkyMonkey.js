function chunkArrayInGroups(arr, size) {
  let newArr = [];
  let init = 0;
  let end = size;
  let grupo = Math.ceil(arr.length / size); //redondeando hacia arriba
  for(let i = 0; i<grupo; i++){
    newArr.push(arr.slice(init,end))
    init += size;
    end += size;
  }
  return newArr;
}

console.log(chunkArrayInGroups(["a", "b", "c", "d"], 2));
// should return [["a", "b"], ["c", "d"]].
console.log(chunkArrayInGroups([0, 1, 2, 3, 4, 5], 3));
// should return [[0, 1, 2], [3, 4, 5]].
console.log(chunkArrayInGroups([0, 1, 2, 3, 4, 5], 2));
// should return [[0, 1], [2, 3], [4, 5]].
console.log(chunkArrayInGroups([0, 1, 2, 3, 4, 5], 4));
// should return [[0, 1, 2, 3], [4, 5]].
console.log(chunkArrayInGroups([0, 1, 2, 3, 4, 5, 6], 3));
// should return [[0, 1, 2], [3, 4, 5], [6]].
console.log(chunkArrayInGroups([0, 1, 2, 3, 4, 5, 6, 7, 8], 4));
// should return [[0, 1, 2, 3], [4, 5, 6, 7], [8]].
console.log(chunkArrayInGroups([0, 1, 2, 3, 4, 5, 6, 7, 8], 2));
// should return [[0, 1], [2, 3], [4, 5], [6, 7], [8]].

/*
 let grupos = [];
  let newArr = [];
  arr.forEach(function(item){
    for(let i = 0;i <size; i++){
      grupos.push(item);
    }
    newArr.push(grupos);
    grupos = [];
  });
  return newArr;
  ----------------------------------
  function forecast(arr) {
// change code below this line
let arry = arr.slice(2,4);
return arry;
}

// do not change code below this line
console.log(forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']));
--------------------------------*/

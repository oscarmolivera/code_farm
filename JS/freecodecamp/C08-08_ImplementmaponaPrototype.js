/* 
Write your own Array.prototype.myMap(), which should behave exactly like 
Array.prototype.map(). You may use a for loop or the forEach method.
*/

// the global Array
var s = [23, 65, 98, 5];

Array.prototype.myMap = function(callback){
  var newArray = [];
  // Add your code below this line
  for(let i = 0; i<s.length; i++){
    newArray.push(s[i] * 2);
  }
  // Add your code above this line
  return newArray;

};

var new_s = s.myMap(function(item){
  return item * 2;
});

console.log(new_s);

/* ############################################# OTHERS SOLUTIONS 
2)

----------------------------------------------------------------------
3)

----------------------------------------------------------------------
4)

----------------------------------------------------------------------
5)

----------------------------------------------------------------------
6)

----------------------------------------------------------------------
7)

----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

*/

/* THRASH CAN ****************************************************

*/
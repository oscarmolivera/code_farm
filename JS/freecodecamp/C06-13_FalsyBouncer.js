//Elias Dris
function bouncer(arr) {
  let _one = arr.filter(x => (typeof x === 'number'  || typeof x === 'string'));
  let sol = _one.filter(x => (x > 0 || (typeof x === 'string' && x.length > 0)));
  return sol;
}
//console.log(bouncer([7])); 
console.log(bouncer([7, "ate", "", false, 9])); 
// should return [7, "ate", 9].
console.log(bouncer(['a', 'b', 'c', 's'])); 
// should return ["a", "b", "c"].
console.log(bouncer([false, null, 0, NaN, undefined, ""])); 
// should return [].
console.log(bouncer([1, null, NaN, 2, undefined])); 
// should return [1, 2].
/*

/^([a-z0-9]{5,})$/.test('abc1')
--------------------------------
 var sol = [];
  var re = new RegExp("([/w]");
  //let sol = arr.map(x => (re.test(x)));
  for(let i = 0; i < arr.length; i++){
    if(re.test(arr[i])){
      sol = sol.push(arr[i]);
    }
  }
  ------------------------------
  var term = "sample1";
var re = new RegExp("^([a-z0-9]{8,})$");
if (re.test(term)) {
    console.log("Valid");
} else {
    console.log("Invalid");
}
-------------------------------
//return /^([a-z0-9]{5,})$/.test('abc1');
  let sol = [];
 for(let i = 0; i < arr.length; i++){
    
  console.log(/[^(true|false)]/g.test(arr[i]));
    
  }return sol;
-------------------------------
for(let i = 0; i < arr.length; i++){
    console.log(/[^(false)]/.test(arr[i]));
  }
  return "listo";
-------------------------------
for(let i = 0; i < arr.length; i++){
    console.log(typeof arr[i] === 'number'); 
  }
*/
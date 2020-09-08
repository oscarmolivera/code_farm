/*
String incrementer
Your job is to write a function which increments a string, to create a new string.
    If the string already ends with a number, the number should be incremented by 1.
    If the string does not end with a number. the number 1 should be appended to the new string.
Examples:
foo -> foo1
foobar23 -> foobar24
foo0042 -> foo0043
foo9 -> foo10
foo099 -> foo100
Attention: If the number has leading zeros the amount of digits should be considered.
*/

let incrementString = str => str.replace(/([0-8]|\d?9+)?$/, (e) => e ? + e + 1 : 1)
/*
function incrementString(strng) {
  let sec = '';
  if(strng.match(/\d*$/) != ''){
    strNum = strng.match(/\d*$/)[0];
    onlyStr = strng.split(strNum)[0]; //wordw-oCeros
    numLength = strNum.length; //numLength
    newNum = parseInt(strNum)+1; //newNum
    newStrgn = onlyStr + newNum.toString(); //newStrgn
    if (newStrgn.length == strng.length){  //tamaños iguales
      sec = newStrgn;
    }else{
      newStrNum = pad(newNum, numLength);//newStrNum
      if (parseInt(newStrNum) > 0){
       sec = onlyStr + newStrNum;
      }
      else{
        sec = onlyStr + newNum.toString();
      }
    }
  }
  else{
    sec = strng + '1';
  }
  return sec;
}
function pad(num, size) {
  var s = "000000000" + num;
  return s.substr(s.length-size);
}
*/

/* ############################################# OTHERS SOLUTIONS 
-----------------------------------------------------------------
function incrementString(input) {
  if(isNaN(parseInt(input[input.length - 1]))) return input + '1';
  return input.replace(/(0*)([0-9]+$)/, function(match, p1, p2) {
    var up = parseInt(p2) + 1;
    return up.toString().length > p2.length ? p1.slice(0, -1) + up : p1 + up;
  });
}
-----------------------------------------------------------------
return input.replace(/([0-8]?)(9*)$/, function(s, d, ns) {
      return +d + 1 + ns.replace(/9/g, '0');
    });
-----------------------------------------------------------------    
function incrementString(input) {
  return input.replace(/\d*$/, function(n) {
    var x = ~~n + 1
    return ('0000000' + x).slice(-Math.max(n.length, String(x).length))
  })
}    
-----------------------------------------------------------------
let incrementString = str => str.replace(/([0-8]|\d?9+)?$/, (e) => e ? + e + 1 : 1)
-----------------------------------------------------------------
function incrementString(str){
  var c = str[str.length-1];
    switch(c){
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8': return str.substring(0, str.length-1) + (parseInt(c)+1);
            case '9': return incrementString(str.substring(0, str.length-1)) + 0;
            default: return str+"1";
                }
}
-----------------------------------------------------------------
function incrementString (strng) {
  var m = strng.match(/^(\w*?)(\d*)$/);
  var next = (parseInt('0'+m[2], 10) + 1) + '';
  return m[1] + m[2].slice(0, -next.length) + next;
}
-----------------------------------------------------------------
function incrementString (strng) {
  return strng.replace(/(\d*)$/, (_, p1) => p1 ? String(+p1 + 1).padStart(p1.length, 0) : 1);
}
*/

//console.log(incrementString("foo"));
//# => foo1
console.log(incrementString("foobar001"));
//# => foobar002
//console.log(incrementString("foobar1"));
//# => foobar2
console.log(incrementString("foobar00"));
//# => foobar01
console.log(incrementString("foobar99"));
//# => foobar100
//console.log(incrementString("f00bar"));
//# => f00bar1
//console.log(incrementString("f00b4r"));
//# => f00b4r1
console.log(incrementString("foobar000"));
//# => foobar001
console.log(incrementString("foobar999"));
//# => foobar1000
//console.log(incrementString("foobar0999"));
//# => foobar01000
console.log(incrementString("foobar001"));
//# => foobar002
//console.log(incrementString("foobar1"));
//# => foobar2
//console.log(incrementString("f0"));
//# => f1
//console.log(incrementString("fB"));
//# => fB1
console.log(incrementString("foobar00999"));
//# => foobar01000
console.log(incrementString("009"));
//# => foobar010

/*

trash can

 //num = (parseInt(strng.match(/\d*$/)[0]));
      num = strng.match(/\d*$/)[0];
      //sec = num.length;
      //sec = strng.split(num)[0];
      if ((parseInt(num)+1).toString().length != (parseInt(num)).toString().length){
         sec = strng.split(num)[0] + (parseInt(num)+1).toString();    

      }
      else{
        //sec = strng.split(num)[0] + pad((parseInt(num)+1),num.length ).toString()
      }
    }
  else{
      //sec = strng + '1';
  }
  /**/
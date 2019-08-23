/* 
CW-VowelCount
Return the number (count) of vowels in the given string.
We will consider a, e, i, o, and u as vowels for this Kata.
The input string will only consist of lower case letters and/or spaces.
 */

function getCount(str) {
  var vowelsCount = 0;
  var test = str.match(/[aeiou]/ig)
  if (test !== null){
    vowelsCount = test.length;
  }
  else{
    vowelsCount = 0;
  }
   return vowelsCount;
}

/* ############################################# OTHERS SOLUTIONS
2)
function getCount(str) {
  return (str.match(/[aeiou]/ig)||[]).length;
}
----------------------------------------------------------------------
3)
function getCount(str) {
  return str.replace(/[^aeiou]/gi, '').length;
}
----------------------------------------------------------------------
4)
function getCount(str) {
  let vowels = ['a','e','i','o','u'];
  return str.split('').filter(letter => {
    return vowels.includes(letter)? true : false;
  }).length;
}
----------------------------------------------------------------------
5)
function getCount(str) {
 return str.split('').filter(c => "aeiouAEIOU".includes(c)).length;
}
----------------------------------------------------------------------
6)
function getCount(str) {
  for (var n = 0, i = 0; i < str.length; i++) {
    var c = str.charCodeAt(i)
    if (c === 97 || c === 101 || c === 105 || c === 111 || c === 117) n++
  }

  return n
}
----------------------------------------------------------------------
function getCount(str) {
  var vowelsCount = 0;
  for (index in str){
    switch (str[index]) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    vowelsCount++;
    break;
    }
  }
  return vowelsCount;
}
----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

*/
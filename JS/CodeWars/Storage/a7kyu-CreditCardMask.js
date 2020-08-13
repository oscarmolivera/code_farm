/* 
Credit Card Mask
Usually when you buy something, you're asked whether your credit card number, 
phone number or answer to your most secret question is still correct. 
However, since someone could look over your shoulder, you don't want that 
shown on your screen. Instead, we mask it.
Your task is to write a function maskify, which changes all but the last four 
characters into '#'.
*/

// return masked string
function maskify(cc) {
  let response = '';
  (cc.toString().length <= 4) ?  response = cc.toString() : response =  ('#'.repeat((cc.toString().length-4))) + cc.substr(cc.toString.length -4);
  return response;
}

console.log(maskify('4556364607935616'));
// '############5616');
console.log(maskify('1'));
// '1');
console.log(maskify('11111'));
// '#1111');

/* ############################################# OTHERS SOLUTIONS 
function maskify(cc) {
  return cc.slice(0, -4).replace(/./g, '#') + cc.slice(-4);
}
----------------------------------------------------------------------
function maskify(cc) {
  return cc.replace(/.(?=....)/g, '#');
}
----------------------------------------------------------------------
maskify = (cc) => '#'.repeat(Math.max(0, cc.length - 4)) + cc.substr(-4);
----------------------------------------------------------------------
function maskify(cc) {
  cc = cc.split("");
  for(var i = 0; i < cc.length - 4; i++){
    cc[i] = "#";
}

cc = cc.join("");
return cc
}
----------------------------------------------------------------------
function maskify(cc) {
  return cc.replace(/(?=.{5})./g, '#')
}
----------------------------------------------------------------------
function maskify(cc) {
  return '#'.repeat(cc.slice(0, -4).length) + cc.slice(-4);
}
----------------------------------------------------------------------
function maskify(cc) {
  return cc.split('').reduce(function(p, c, i) {
      return i < cc.length - 4 ? p + '#' : p + c;
  }, '');
}
----------------------------------------------------------------------
function maskify(cc){
  return cc.substr(0, cc.length - 4).replace(/./g, '#') + cc.substr(-4)
}
----------------------------------------------------------------------
function maskify(cc) {
  var x = cc.length - 4;
  return x > 0 ? new Array(x + 1).join('#') + cc.slice(x) : cc;
}
----------------------------------------------------------------------

----------------------------------------------------------------------

*/
/* 
 Remove String Spaces
 Simple, remove the spaces from the string, then return the resultant string.
*/

const noSpace = (str) => str.split('').filter((x) => x != ' ').join('')

console.log(noSpace('x'));

console.log(noSpace('8 j 8   mBliB8g  imjB8B8  jl  B'));
// => '8j8mBliB8gimjB8B8jlB'
console.log(noSpace('8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd'));
// => '88Bifk8hB8BB8BBBB888chl8BhBfd'
console.log(noSpace('8aaaaa dddd r     '));
// => '8aaaaaddddr'

/* ############################################# OTHERS SOLUTIONS 
2)
function noSpace(x){
  return x.replace(/\s/g, '');
}
----------------------------------------------------------------------
3)
function noSpace(x){return x.split(' ').join('')}
----------------------------------------------------------------------
4)
function noSpace(x){
  return x.split('').filter((x) => x != ' ').join('')
}
----------------------------------------------------------------------
5)
const noSpace = x => x.replace(/ /g, "");
----------------------------------------------------------------------
6)
const noSpace=x=>x.split(" ").join("");
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
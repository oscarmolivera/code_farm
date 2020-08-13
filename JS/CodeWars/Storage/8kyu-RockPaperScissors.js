/* 
Rock Paper Scissors!
rps('scissors','paper') // Player 1 won!
rps('scissors','rock') // Player 2 won!
rps('paper','paper') // Draw!
*/
const rps = (p1, p2) => {
   wins = { 'scissors' : 'paper', 'paper' : 'rock', 'rock' : 'scissors' }
   if( p1 == p2 ){return 'Draw!'}
   if(wins[p1]== p2){
      return "Player 1 won!";
   }
   else{
      return "Player 2 won!";
   }
};

console.log(rps('rock', 'scissors'));
// : getMsg(1)
console.log(rps('scissors', 'paper'));
// : getMsg(1)
console.log(rps('paper', 'rock'));
// : getMsg(1)
console.log(rps('scissors', 'rock'));
// : getMsg(2)
console.log(rps('paper', 'scissors'));
// : getMsg(2)
console.log(rps('rock', 'paper'));
// : getMsg(2)
console.log(rps('rock', 'rock'));
// : 'Draw!'
console.log(rps('scissors', 'scissors'));
// : 'Draw!'
console.log(rps('paper', 'paper'));
// : 'Draw!'

/* ############################################# OTHERS SOLUTIONS 
2)
const rps = (p1, p2) => {
  if(p1 === p2) {
    return 'Draw!'
  }; 
  return `Player ${/rockscissors|scissorspaper|paperrock/.test(p1+p2)? 1 : 2} won!`;
}
----------------------------------------------------------------------
3)

rps=(a,b)=>a==b?'Draw!':`Player ${/rp|ps|sr/.test(a[0]+b[0])?2:1} won!`;
----------------------------------------------------------------------
4)
const rps = (a, b) => a == b ? 'Draw!' : `Player ${/rp|ps|sr/.test(a[0] + b[0]) ? 2 : 1} won!`;
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
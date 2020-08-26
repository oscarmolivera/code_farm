// // How big is the room?
// // Build a program that asks the user to enter the length and width of a room in meters,
// // and then logs the area of the room to the console in both square meters and square feet.

// // Note: 1 square meter == 10.7639 square feet
// // Do not worry about validating the input at this time. Use the readlineSync.prompt method to collect user input.

// // Example:
// // Enter the length of the room in meters:
// // 10
// // Enter the width of the room in meters:
// // 7
// // The area of the room is 70.00 square meters (753.47 square feet).

const readline = require('readline-sync');
const SQMETERS_TO_SQFEET = 10.7639;

function calculateArea (length, width) {
  return (length * width);
}

console.log(
  'Will you be using metres for feet?\n1). Square Metres\n2). Square Feet');
let units = readline.question();

console.log('Length:');
let length = readline.question();
length = parseInt(length, 10);

console.log('Width:');
let width = readline.question();
width = parseInt(length, 10);

if (units === '1') {
  let areaSM = (calculateArea(length, width));
  let areaFeet = (areaSM * SQMETERS_TO_SQFEET);
  answer;
} else {
  let areaFeet = (calculateArea(length, width));
}

console.log(
  `The area of the room is ${areaSM.toFixed(2)} (${areaFeet.toFixed(2)} square feet})`);
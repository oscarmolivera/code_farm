"use strict"
// https://regexr.com/

const r = {
  start: { x: 5, y: 6},
  end: { x: 6, y: -9 }
};
const { start : { x: startX, y: startY }, end : {x: endX, y:endY}} = r;
console.log(startX, endY); // 5, 6

const [,,a, b,,, c] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log(a, b, c); // 3, 4, 7

const stats = {
  max: 56.78,
  standard_deviation: 4.34,
  median: 34.54,
  mode: 23.87,
  min: -0.75,
  average: 35.85
};
const half = (function() {
  "use strict"; // do not change this line

  // change code below this line
  return function half({mode, min}) {
    // use function argument destructuring
    return (mode + min) / 2.0;
  };
  // change code above this line

})();
console.log(stats); // should be object
console.log(half(stats)); // should be 28.015
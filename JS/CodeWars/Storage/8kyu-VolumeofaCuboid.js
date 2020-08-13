/*
 Volume of a Cuboid
  Bob needs a fast way to calculate the volume of a cuboid with three values: 
  length, width and the height of the cuboid. Write a function to help Bob with this calculation.  
*/

var Kata;

Kata = (function() {
  function Kata() {}

  Kata.getVolumeOfCuboid = function(length, width, height) {
    return length*width*height;
  };

  return Kata;

})();

console.log(Kata.getVolumeOfCuboid(2, 3, 4));
// => 24
console.log(Kata.getVolumeOfCuboid(4, 6, 8));
// => 192
console.log(Kata.getVolumeOfCuboid(7, 14, 26));
// => 2548
console.log(Kata.getVolumeOfCuboid(1,2,2));
// => 4
console.log(Kata.getVolumeOfCuboid(6.3,2,5));
// => 63

/* ############################################# OTHERS SOLUTIONS 
const Kata = {
  getVolumeOfCuboid : (length, width, height) => length * width * height
}
-----------------------------------------------------------------
var Kata = (() => {
  this.getVolumeOfCuboid = (l, w, h) => l * w * h;
  return this;
})();

*/
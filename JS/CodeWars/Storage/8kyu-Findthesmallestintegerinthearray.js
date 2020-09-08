/*
Find the smallest integer in the array
Given an array of integers your solution should find the smallest integer.
For example:

    Given [34, 15, 88, 2] your solution will return 2
    Given [34, -345, -1, 100] your solution will return -345

You can assume, for the purpose of this kata, that the supplied array will not be empty.
*/

class SmallestIntegerFinder {
  findSmallestInt(args) {
    //args.sort(function(a,b){return a - b;});
    args.sort((a,b)=>a-b);
    return args[0];
  }
}
var sif = new SmallestIntegerFinder();
console.log(sif.findSmallestInt([78,56,232,12,8]));
// # => 8,'Should return the smallest int 8');
console.log(sif.findSmallestInt([78,56,232,12,18]));
// # => 12,'Should return the smallest int 12');
console.log(sif.findSmallestInt([78,56,232,412,228]));
// # => 56,'Should return the smallest int 56');
console.log(sif.findSmallestInt([78,56,232,12,0]));
// # => 0,'Should return the smallest int 0');
console.log(sif.findSmallestInt([1,56,232,12,8]));
// # => 1,'Should return the smallest int 1');

/* ############################################# OTHERS SOLUTIONS 
class SmallestIntegerFinder {
  findSmallestInt(args) {
    return Math.min(...args)
  }
}
----------------------------------------------------------------------
class SmallestIntegerFinder {
  findSmallestInt(args) {
    return Math.min.apply(null, args);
  }
}
----------------------------------------------------------------------
def find_smallest_int(arr)
  arr.sort!
  arr[0]
end
----------------------------------------------------------------------
class SmallestIntegerFinder {
  findSmallestInt(args) {
    return args.sort((a,b)=>a-b)[0];
  }
}
--------------------------------------------------------------------
class SmallestIntegerFinder {
  findSmallestInt(args) {
    return args.reduce(function(prev, curr, index, array) {
      return prev < curr ? prev : curr;
    });
  }
}
------------------------------------------------------------------
class SmallestIntegerFinder {
  findSmallestInt(args) {
    return Math.min.apply(this,args);
  }
}
-------------------------------------------------------------------
class SmallestIntegerFinder {
  constructor() {
    this.findSmallestInt = Function.apply.bind(Math.min, null);
  }
}
*/
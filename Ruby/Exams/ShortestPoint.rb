=begin
You have an array p of points on a Cartesian plane. Find and return the minimum possible Euclidian 
distance between two points with different indices in p.

Example
For p = [[0, 11], [-7, 1], [-5, -3]], the output should be
closestPointPair(p) = 4.472135955.

Input/Output
[execution time limit] 4 seconds (rb)
[input] array.array.integer p
Every inner array p[i] contains exactly 2 integers: the x and y coordinates of the ith point.

Guaranteed constraints:
2 ≤ p.length ≤ 2 · 104,
p[i].length = 2,
|p[i][j]| ≤ 107.

[output] float

The minimum possible distance between two points with different indices in p.
Your answer will be considered correct if its absolute error doesn't exceed 10-5.

The Distance Formula
Very often, especially when measuring the distance in the plane, we use the formula for the Euclidean distance. According to the Euclidean distance formula, the distance between two points in the plane with coordinates (x, y) and (a, b) is given by

dist((x, y), (a, b)) = √(x - a)² + (y - b)²

As an example, the (Euclidean) distance between points (2, -1) and (-2, 2) is found to be

  dist((2, -1), (-2, 2))	= √(2 - (-2))² + ((-1) - 2)²
                          = √(2 + 2)² + (-1 - 2)²
                          = √(4)² + (-3)²
                          = √16 + 9
                          = √25
                          = 5.
=end

def closestPointPair(p)

end

#Test 1
p closestPointPair([[0,11],  [-7,1],  [-5,-3]])
# => 4.472135955
p closestPointPair([[19,-15],  [4,9],  [13,-7],  [-3,-1],  [-10,30]])
# => 10
p closestPointPair([[-4,26],  [30,27],  [12,21],  [26,-11],  [-13,-12]])
# => 16.763054614
p closestPointPair([[6,1],  [3,30],  [32,11],  [6,23],  [4,-3],  [2,34],  [20,29],  [-12,-4],  [7,18],  [8,-1]])
# => 2.828427125
p closestPointPair([[-12,3],  [32,29],  [-3,-8],  [22,-6],  [8,26],  [14,13],  [1,20],  [25,27],  [23,-9],  [25,27],  [-1,33],  [31,-10],  [25,14]])
# => 0
p closestPointPair([[-9,-14],  [28,33],  [14,8],  [19,-11],  [-9,25],  [1,11],  [16,-7],  [29,24],  [11,8],  [22,23],  [3,17],  [14,26],  [18,0],  [24,-7],  [-11,15],  [12,-9],  [8,21],  [6,30],  [9,7],  [5,14],  [12,8],  [32,-3]])
# => 1
p closestPointPair([[-4,21],  [-10,2],  [-10,9],  [16,-13],  [-15,-15],  [26,9],  [1,15],  [-8,26],  [-8,22],  [-8,22],  [-12,18],  [30,-6],  [-6,-7],  [6,23],  [7,31],  [-9,15],  [-2,3],  [-15,26]])
# => 0
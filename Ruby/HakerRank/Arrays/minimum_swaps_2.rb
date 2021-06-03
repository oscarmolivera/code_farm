=begin

Minimum Swaps 2

You are given an unordered array consisting of consecutive integers
[1, 2, 3, ..., n] without any duplicates. You are allowed to swap any two
elements. Find the minimum number of swaps required to sort the array in
ascending order.

Example:
  arr = [7, 1, 3, 2, 4, 5, 6]

i   arr                     swap (indices)
0   [7, 1, 3, 2, 4, 5, 6]   swap (0,3)
1   [2, 1, 3, 7, 4, 5, 6]   swap (0,1)
2   [1, 2, 3, 7, 4, 5, 6]   swap (3,4)
3   [1, 2, 3, 4, 7, 5, 6]   swap (4,5)
4   [1, 2, 3, 4, 5, 7, 6]   swap (5,6)
5   [1, 2, 3, 4, 5, 6, 7]

It took 5 swaps to sort the array.
Function Description
Complete the function minimumSwaps in the editor below.
minimumSwaps has the following parameter(s):

int arr[n]: an unordered array of integers

Returns
int: the minimum number of swaps to sort the array

Input Format

The first line contains an integer, 'n', the size of arr.
The second line contains 'n' space-separated integers

=end

arr = [7, 1, 3, 2, 4, 5, 6]

# Complete the minimumSwaps function below.
def minimumSwaps(arr)
  arr.size
end

minimumSwaps(arr)

def bubble_sort(array)
  return array if array.size <= 1
  swap = true
  cont = 0
    while swap
      swap = false
      (array.length - 1).times do |x|
        if array[x] > array[x+1]
          array[x], array[x+1] = array[x+1], array[x]
          cont += 1
          swap = true
        end
      end
    end
  cont
end

bubble_sort(arr)


def insertion_sort(array)
  cont = 0
  (array.length).times do |j|
    while j > 0
      cont += 1
      if array[j-1] > array[j]
        array[j], array[j-1] = array[j-1], array[j]
        p count
      else
        break
      end
      j-=1
    end
  end
  cont
end
p insertion_sort(arr)
=begin

******------******
p arr.min
p arr.max
p arr.size

arr == arr.sort
=end

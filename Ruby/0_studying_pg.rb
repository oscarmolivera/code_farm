def test(arr)
  arr.reverse.join(' ')
end

p test([1, 2, 3, 4, 5, 6])

def sum_terms(n)
  (1..n).reduce(0) { |sum, val| sum += (val * val + 1) }
end

p sum_terms(25)

h = {'a' => 1, 'b' => 2, 'c' => 3}
def func_find(hash)
  # Check and return the first object that satisfies either of the following properties:
  #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
  #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
  # (hash.find {|key, value| key.is_a? Integer } && hash.find {|key, value| value.is_a? Integer && value < 10 }) || (hash.find {|key, value| key.is_a? String } && hash.find {|key, value| value.is_a? String && value[0] == 'a' })
  hash.find { |key, value| 
              (key.is_a? Integer) && ((value.is_a? Integer) && (value < 20) ) ||
              (key.is_a? String) && ((value.is_a? String) && (value[0] =='a') )
            }
end

def func_all(hash)
  # Check and return true if all the values within the hash are Integers and are < 10
  # If not all values satisfy this, return false.
  hash.all? { |key, value| (value.is_a? Integer) && (value < 10) }
end

p func_find(h)

# p func_all(h)

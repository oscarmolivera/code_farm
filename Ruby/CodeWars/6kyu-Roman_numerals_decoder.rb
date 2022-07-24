=begin 
  Create a function that takes a Roman numeral as its argument and returns its value as a 
  numeric decimal integer. You don't need to validate the form of the Roman numeral.

  Modern Roman numerals are written by expressing each decimal digit of the number to be 
  encoded separately, starting with the leftmost digit and skipping any 0s. So 1990 is 
  rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM,
  8 = VIII). The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.
=end

def test(str)
  values = {
    'M' => 1000,
    'D' => 500,
    'C' => 100,
    'L' => 50,
    'X' => 10,
    'V' => 5,
    'I' => 1
  }
  sum = []
  array = str.chars
  array.each.with_index do |num, idx|
    unless array[idx+1].nil?
      if values[num] < values[array[idx + 1]]
        sum << values[num] * -1
      else
        sum << values[num]
      end
    end
  end
  sum << values[array[-1]]
  sum.reduce(&:+)
end

p test('IV')
# => 4
p test('MMVIII')
# => 2008
p test('MDCLXVI')
# => 1666
p test('XXI')
# => 21
p test('I')
# => 1

=begin ############################################# OTHERS SOLUTIONS 
2)

----------------------------------------------------------------------
3)

----------------------------------------------------------------------
4)

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

=end

=begin THRASH CAN ****************************************************
=end
def piramide (sym, rep)
  neg = (rep -1)
  space = ' ' * neg
  1.upto(rep) do |r|
    (r-1) > 0 ? ast = ' *' * (r-1) : ast = ''
    puts "#{space}*#{ast}"
    neg -= 1
    neg > 0 ? space = ' ' * neg : space = ''
  end
end

#piramide("&", 5) 

def otra_sol (sym, rep)
  valor = sym
  for i in 1..rep
    puts " " * (rep - i) + valor
    valor += sym * 2
  end
end

#otra_sol("&", 5)



def pyramid (sim, rp)
 p "#{sim} " if rp == 1
 pyramid(sim * ((rp)+(rp-1)) , rp-1)
end

pyramid("$", 3)

def nicer 
  yield 2
  yield 3
  yield 4
end

  whatever ( proc{ p 2 + 2})
  nicer do |i| p puts "two" if i == 2 end
  nicer do |i| p puts "not two" if not i == 2 end
  nicer do |i| p puts "not what you think" if !i == 2 end
  
  whatever (proc { p 2 + 5})
  nicer {p 2 + 6}


  def countVowls (str)
    str.split('').select{|v| v.match(/[aeiou]/)}.count
  end
  
  #p countVowls("Homomatopeya")
  
  def misma_vocal_en_misma_posision (str1, str2)
    sol = false
    bb = str2.split('')
    str1.split('').each_with_index do |g, index|
      if g.match(/[aeiou]/)
        if g == bb[index]
          sol = true
        end
      end
    end
    sol
    arr = []
    str1.split('').each_with_index {|g, index|  arr << g==str2[index]}
    arr
  end
  
  #p misma_vocal_en_misma_posision("doroty", "amro")
  
  def whatever block
   block.call
  end
  
  

  def countVowls2 (str1, str2)

    str1.downcase.chars.sort == str2.downcase.chars.sort
  
    str1.count('aeiouAEIOU') == str2.count('aeiouAEIOU*') 
  
    str1.length
    str1.tr('aeiou', '')
    str1.count('aeiouAEIOU')
    
  end
  
  
  p countVowls2("Historiaz",  "If the second argument is a Hash, and the matched text is one of its keys, the corresponding value is the replacement string")
  
  
  
  def series_h (len)
    serie = (1..len).map {|d| (d < 2 ? n = 1 : n = 1.0/(d + (2*(d-1)))  )}.reduce(:+)
    sprintf('%.2f', serie)
  end
  
  
  p series_h (5)


  def newtry (len)
    return "0.00" if len < 1
    #'%.2f' %  (1..len).map{|g| g < 2 ? 1 : 1.0/(g + (2 * (g-1)))}.reduce(:+)
    '%.2f' % (1..len-1).reduce(1) {|sum, g| sum + 1.0 / (3 * g + 1) }
  end
  
  p newtry(2)

  def increment_string(input)
    #num_str = input.scan(/\d+$/).first.to_s
    #return input.gsub(num_str, num_str.next) if input.match(/\d$/)
    #return input + "1" if num_str.empty?
    #---------------------------------------------
    return input + '1' if input =~ /\D$/ || input.empty?
    input.sub(/\d+$/) {|n| (n.to_i + 1).to_s.rjust(n.length, '0') }
  
  end

  def number(stops)
    a = stops.map{|n| n[0]}.reduce(:+)
    b = stops.map{|n| n[1]}.reduce(:+)
    a -b
  end
  
  p number ([[2,0],[5,3], [4,1], [3, 7]])


  def song_decoder (mix)
    mix.split('WUB').select {|d| d != ''}.join(' ')
  end
  
  p song_decoder("AWUBBWUBC")
  # =>  "A B C","WUB should be replaced by 1 space");
  p song_decoder("AWUBWUBWUBBWUBWUBWUBC")
  # =>  "A B C","multiples WUB should be replaced by only 1 space");
  p song_decoder("WUBAWUBBWUBCWUB")
  # =>  "A B C", "heading or trailing spaces should be removed");

  
def nb_dig(num, d)
  (1..num).map{ |n| (n**2).to_s}.join('').count(d.to_s)
end

p nb_dig(341,7)



def cuboid (*dimensiones)
  "Volume = #{dimensiones.reduce(:*)}"
end


p cuboid(14, 15, 6)



def stringy size
  (1..size).map{'10'}.join('').slice(0..size-1)
end

p stringy 0
def play (*hands)
  won_table = [['paper','rock'], ['scissors', 'paper'], ['rock', 'scissors']]
  return "Draw!" if hands[0] == hands[1]
  won_table.include?(hands) ? "Player 1 won!" : "Player 2 won!"
end


p play('scissors','paper')
# => // Player 1 won!
p  play('scissors','rock')
# => // Player 2 won!
p play('paper','paper')
# => // Draw!

=begin
  hd2 = 1
  hd1 = 2 if h1 == 'paper' and h2 == 'rock'
  hd1 = 2 if h1 == 'rock' and h2 == 'scissors'
  hd1 = 2 if h1 == 'scissors' and h2 == 'paper'

  hd1 = 1 if h1 == h2 

  hd1 = 0 if h1 == 'paper' and h2 == 'scissors'
  hd1 = 0 if h1 == 'rock' and h2 == 'paper'
  hd1 = 0 if h1 == 'scissors' and h2 == 'rock'
  return "Player 1 won!" if hd1 > hd2
  return "Player 2 won!" if hd1 < hd2
  return "Draw!" if hd1 == hd2
=end




def multiply n
  n * (5 ** (n.to_s.gsub('-', '').size)) 
end
  

  p multiply(3)
  # >= 15
  p multiply(10)
  # >= 250
  p multiply(200)
  # >= 25000
  p multiply(0)
  # >= 0
  p multiply(-3)
  # >= -15



def smallest array
  array.sort.take(array.size)[array.size-1]  #max
  array.sort.take(array.size)[0]  #max

  array.min
end

p smallest([34, 15, 88, 2])
# => your solution will return 2
p smallest([34, -345, -1, 100])
#>  your solution will return -345



def pyramid_odd row
  primes_quantity= (1..row).reduce(:+)
  primes_numbers = (0..primes_quantity-1).map{|m| m + m+1}
  primes_numbers.slice(((primes_numbers.length)-row), row).reduce(:+)
end
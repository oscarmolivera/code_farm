=begin 

=end

def strangeCounter(t)
  init= 0
  valor = 3

  while init < t
    puts "WHILE_A init: #{init} | valor: #{valor} | t: #{t}"

    init += valor

    puts "WHILE B init: #{init} | valor: #{valor} | t: #{t}"

    valor *= 2

    puts "WHILE C init: #{init} | valor: #{valor} | t: #{t}"
  end
  puts "OUT init: #{init} | valor: #{valor} | t: #{t}"
  valor /=2
  puts "OUT init: #{init} | valor: #{valor} | t: #{t}"
  puts "------------------------------"
  resta = valor - t
  puts "valor - t: #{resta}"
  grupob = (valor - t) + 1
  puts "eso +1: #{grupob}"
  grupoa = init - valor 
  puts "init - valor: #{grupoa}"
  puts "grupoa: #{grupoa} + grupob: #{grupob}"
  init - valor + (valor - t) + 1
end

p strangeCounter(4)
=begin ############################################# OTHERS SOLUTIONS 
2)
while total < t:
      total += n
      n *= 2
  n /= 2
  print total - n + (n-t)+1
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
9)

------------------------------  ----------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end
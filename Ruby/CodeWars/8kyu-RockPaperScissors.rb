=begin 
Rock Paper Scissors
Let's play! You have to return which player won! In case of a draw return Draw!.
Examples:
rps('scissors','paper') // Player 1 won!
rps('scissors','rock') // Player 2 won!
rps('paper','paper') // Draw!
=end

def rps(p1, p2)
  return "Player 1 won!" if p1 == 'rock' && p2 == 'scissors' || p1 == 'scissors' && p2 == 'paper' || p1 == 'paper' && p2 == 'rock'
  return "Player 2 won!" if p1 == 'paper' && p2 == 'scissors' || p1 == 'rock' && p2 == 'paper' || p1 == 'scissors' && p2 == 'rock'
  return "Draw!" if p1 === p2
end

  puts rps('rock', 'scissors')
  # => "Player 1 won!"
  puts rps('scissors', 'paper')
  # => "Player 1 won!"
  puts rps('paper', 'rock')
  # => "Player 1 won!"
  puts rps('scissors', 'rock')
  # => "Player 2 won!"
  puts rps('paper', 'scissors')
  # => "Player 2 won!"
  puts rps('rock', 'paper')
  # => "Player 2 won!"
  puts rps('rock', 'rock')
  # => 'Draw!'
  puts rps('scissors', 'scissors')
  # => 'Draw!'
  puts rps('paper', 'paper')
  # => 'Draw!'

=begin ############################################# OTHERS SOLUTIONS 
2)
def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end
----------------------------------------------------------------------
3)
def rps(p1, p2)
  return 'Draw!' if p1 == p2
  
  result = win_matrix[p1.to_sym][p2.to_sym]
  
  "Player #{result} won!"
end

def win_matrix
  { 
    rock:     { paper: 2, scissors: 1 },
    paper:    { scissors: 2, rock: 1 },
    scissors: { rock: 2, paper: 1 }
  }
end
----------------------------------------------------------------------
4)
def rps(p1, p2)
  return 'Draw!' if p1 == p2
  results = [['scissors', 'paper'], ['paper', 'rock'], ['rock', 'scissors']]
  return results.include?([p1, p2]) ? 'Player 1 won!' : 'Player 2 won!'
end
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
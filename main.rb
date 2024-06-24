require "./Player"
require "./Question"

player1 = Player.new("Player 1", 3)
player2 = Player.new("Player 2", 3)
current_player = player1

# Game loop
loop do
  # Create a new question
  q = Question.new
  puts "#{current_player.name}: #{q.question}"

  # Get player's answer
  print "> "
  player_answer = gets.chomp.to_i

  # Check answer
  if player_answer == q.result
    puts "#{current_player.name}: YES! You are correct."
  else
    puts "#{current_player.name}: Seriously? No!"
    current_player.lose_life
  end

  # Display scores
  puts "P1: #{player1.lives} vs P2: #{player2.lives}"
  

  # Check if game over
  if current_player.lives == 0
    puts "----- GAME OVER -----"
    puts "#{current_player.name} loses. #{current_player == player1 ? player2.name : player1.name} wins!"
    break
  end

  # Switch turns
  current_player = (current_player == player1) ? player2 : player1

  # Add a newline for readability
  puts "----- NEW TURN -----"
end

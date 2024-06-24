class Player 
  attr_accessor :name, :lives
  def intialize(name, lives)
    @name = name
    @lives = lives
  end

  def loss(lives)
    @lives -= 1
  end

  def name=(name)
    @name = name
  end

end

playerOne = Player.new("Player 1", 3)
playerTwo = Player.new("Player 2", 3)


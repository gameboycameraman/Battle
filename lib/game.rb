class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
  end

  def attack(player2) # Player can attack other player
    player2.receive_damage # The other player receives damage.
  end

end

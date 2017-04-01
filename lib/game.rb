class Game

  attr_reader :players

  def initialize(player1, player2)
      @players = [player1, player2]
  end

  def attack(player2) # Player can attack other player
    player2.receive_damage # The other player receives damage.
  end

  def gameover
    @players.first.hp <= 0 || @players.last.hp <= 0
  end

  def reverse
    @players = @players.reverse
  end

  def defender
    @players.last
  end

  def offender
    @players.first
  end

end

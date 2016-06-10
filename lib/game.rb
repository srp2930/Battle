class Game

  attr_reader :players

  def initialize(player1=Player.new, player2=Player.new)
    @players = [player1, player2]
  end

  def attack(player)
    player.receive_damage
  end


end
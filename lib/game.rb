class Game

  attr_reader :players

  def initialize(player1=Player.new, player2=Player.new)
    @players = [player1, player2]
    @current_player = player1
  end

  def attack(player)
    player.receive_damage
    switch
  end

  private

    def switch
      @players.rotate!
      @current_player = players.first
    end


end
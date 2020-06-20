class Human
  attr_accessor :player,:enemy

  def initialize(player,enemy)
    @player = player
    @enemy = enemy
  end

  def player_name
    @player
  end

  def enemy_name
    @enemy
  end
end
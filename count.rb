class Count
  def initialize(turn)
    @turn = turn
  end

  def get_position
    @current_position
  end

  def turn_pass
    @current_position = @turn.first
    @turn.shift
  end
end
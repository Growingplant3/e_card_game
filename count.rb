class Count
  def initialize(round,turn)
    @round = round.to_a
    @turn = turn.to_a
  end

  # ゲッター
  def get_round
    @round
  end

  # ゲッター
  def get_turn
    @turn
  end

  # ゲッター
  def get_position
    @current_position
  end

  # セッター
  def round_pass
    @current_position = @round[0]
    @round.shift
  end

  # セッター
  def turn_pass
    @current_position = @turn[0]
    @turn.shift
  end
end
class Round
  def initialize
    @@all_positions = (1..12).to_a
  end
  
  # これがゲッターで良いでしょうか？
  def self.current_position
    puts @current_position
  end

  # これがセッターで良いでしょうか？
  def self.turn_pass
    @current_position = @@all_positions[0]
    @@all_positions.shift
    puts @@all_positions.count
  end
end

Round.new
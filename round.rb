class Round
  def initialize
    @@all_positions = (1..12).to_a
  end

  def self.turn_pass
    puts "ここが問題"
    puts $current_position
    puts @@all_positions
    $current_position = @@all_positions[0]
    puts @@all_positions.count
    @@all_positions.shift
    puts "aaaaaaa"
    puts @@all_positions.count
  end
end

Round.new
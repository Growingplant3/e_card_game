class Round
  def initialize
    @current_position = []
    counts = (1..3).to_a
    turns = (1..4).to_a
    counts.each do |count|
      turns.each do |turn|
        position = Position.new(count,turn)
        @current_position << position
      end
    end
  end
end
require './player'
require './card'
require './round'
require './position'
require './explain'

explain_situation
explain_rule

@shinanogawa_cards.each do |card|
  puts card.type
end
puts "----"

Round.new
puts @current_position
puts @current_position.class
#puts @current_position.count
exit
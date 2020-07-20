require '../lib/card'

class Deck
  attr_accessor :cards

  def initialize(args)
    @cards = args[:cards]
    emperor = Card.new(name: "皇帝",type: 3)
    citizen = Card.new(name: "市民",type: 2)
    slave = Card.new(name: "奴隷",type: 1)
    # @player_cards = [citizen,citizen,citizen,citizen,slave]
    # @enemy_cards = [citizen,citizen,citizen,citizen,emperor]
  end

  def mix
    return @enemy_cards.shuffle!
  end

  def use_card
    @enemy_cards.shift
    return @enemy_cards
  end
end

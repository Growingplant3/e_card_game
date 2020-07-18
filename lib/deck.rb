require '../lib/card'

class Deck
  attr_reader :name, :player_cards, :enemy_cards

  def initialize(args)
    @name = args[:name]
    emperor = Card.new(name: "皇帝",type: 3)
    citizen = Card.new(name: "市民",type: 2)
    slave = Card.new(name: "奴隷",type: 1)
    @player_cards = [citizen,citizen,citizen,citizen,slave]
    @enemy_cards = [citizen,citizen,citizen,citizen,emperor]
  end

  def self.show
    @player_deck
    @enemy_deck
  end
end

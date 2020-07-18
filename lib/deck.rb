require '../lib/card'

class Deck
  def initialize
    emperor = Card.new("皇帝")
    citizen = Card.new("市民")
    slave = Card.new("奴隷")
    @player_deck = Deck.new([slave,citizen,citizen,citizen,citizen])
    @enemy_deck = Deck.new([emperor,citizen,citizen,citizen,citizen])
  end
end

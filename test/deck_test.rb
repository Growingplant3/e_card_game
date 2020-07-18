require 'minitest/autorun'
require '../lib/deck'
require '../lib/card'

class DeckTest < Minitest::Test
  def test_deck
    Deck.new
    puts @player_deck
    puts @enemy_deck
  end
end

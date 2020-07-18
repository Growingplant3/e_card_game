require 'minitest/autorun'
require '../lib/deck'
require '../lib/card'

class DeckTest < Minitest::Test
  def test_deck
    player_deck = Deck.new(name: "ルビジの全カード",items: @current_cards)
    enemy_deck = Deck.new(name: "信濃川の全カード",itmes: @current_cards)
    assert_equal "ルビジの全カード", player_deck.name
    assert_equal "信濃川の全カード", enemy_deck.name
  end
end

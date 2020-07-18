require 'minitest/autorun'
require '../lib/deck'
require '../lib/card'

class DeckTest < Minitest::Test
  def test_deck
    player_deck = Deck.new(name: "ルビジの全カード",player_cards: @player_cards)
    enemy_deck = Deck.new(name: "信濃川の全カード",enemy_cards: @enemy_cards)
    assert_equal "ルビジの全カード", player_deck.name
    assert_equal "信濃川の全カード", enemy_deck.name
    puts player_deck.player_cards
    puts enemy_deck.enemy_cards
  end
end

require 'minitest/autorun'
require '../lib/deck'
require '../lib/card'

class DeckTest < Minitest::Test
  def test_player_deck
    puts @player_deck
    # assert_equal "ルビジの全カード", @player_deck.name
    # assert_equal "市民", @player_deck.player_cards.first.name
    # assert_equal 2, @player_deck.player_cards.first.type
    # assert_equal "奴隷", @player_deck.player_cards.last.name
    # assert_equal 1, @player_deck.player_cards.last.type
  end

  def test_enemy_deck
    # assert_equal "信濃川の全カード", @enemy_deck.name
    # assert_equal "市民", @enemy_deck.enemy_cards.first.name
    # assert_equal 2, @enemy_deck.enemy_cards.first.type
    # assert_equal "皇帝", @enemy_deck.enemy_cards.last.name
    # assert_equal 3, @enemy_deck.enemy_cards.last.type
  end
end

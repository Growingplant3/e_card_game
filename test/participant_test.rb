require 'minitest/autorun'
require '../lib/deck'
require '../lib/participant'

class DeckTest < Minitest::Test
  def test_participant_player
    @player_deck = Deck.new(name: "ルビジのカードデッキ",player_cards: @player_cards)
    @player = Participant.new(name: "ルビジ", deck: @player_deck)
    assert_equal "ルビジ", @player.name
    assert_equal "ルビジのカードデッキ", @player.deck.name
  end

  def test_participant_enemy
    @enemy_deck = Deck.new(name: "信濃川のカードデッキ",enemy_cards: @enemy_cards)
    @enemy = Participant.new(name: "信濃川", deck: @enemy_deck)
    assert_equal "信濃川", @enemy.name
    assert_equal "信濃川のカードデッキ", @enemy.deck.name
  end
end

require 'minitest/autorun'
require '../lib/deck'
require '../lib/participant'

class DeckTest < Minitest::Test
  def test_participant_player
    @player = Participant.new(name: "ルビジ")
    assert_equal "ルビジ", @player.name
  end

  def test_participant_enemy
    @enemy_deck = Deck.new(cards: @enemy_cards)
    @enemy = Participant.new(name: "信濃川", deck: @enemy_deck)
    assert_equal "信濃川", @enemy.name
  end
end

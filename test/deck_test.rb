require 'minitest/autorun'
require '../lib/deck'

class DeckTest < Minitest::Test
  def test_enemy_deck
    emperor = Card.new(name: "皇帝")
    citizen = Card.new(name: "市民")
    @enemy_cards = [citizen,citizen,citizen,citizen,emperor]
    @enemy_deck = Deck.new(cards: @enemy_cards)
    assert_equal "市民", @enemy_deck.cards.first.name
    assert_equal "皇帝", @enemy_deck.cards.last.name
    assert_equal 5, @enemy_deck.cards.length
    assert_equal Array, @enemy_deck.cards.class
  end

  def test_mix
    emperor = Card.new(name: "皇帝")
    citizen = Card.new(name: "市民")
    @enemy_cards = [citizen,citizen,citizen,citizen,emperor]
    @enemy_deck = Deck.new(cards: @enemy_cards)
    emperor_count = 0
    citizen_count = 0
    @enemy_deck.mix.each do |card|
      if card.name == "皇帝"
        emperor_count += 1
      elsif card.name == "市民"
        citizen_count += 1
      end
    end
    assert_equal 1, emperor_count
    assert_equal 4, citizen_count
    assert_equal 5, @enemy_deck.mix.length
  end
end

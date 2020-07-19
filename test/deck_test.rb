require 'minitest/autorun'
require '../lib/deck'

class DeckTest < Minitest::Test
  def test_player_deck
    @player_deck = Deck.new(name: "ルビジの全カード",player_cards: @player_cards)
    assert_equal "ルビジの全カード", @player_deck.name
    assert_equal "市民", @player_deck.player_cards.first.name
    assert_equal 2, @player_deck.player_cards.first.type
    assert_equal "奴隷", @player_deck.player_cards.last.name
    assert_equal 1, @player_deck.player_cards.last.type
    assert_equal 5, @player_deck.player_cards.length
  end

  def test_enemy_deck
    @enemy_deck = Deck.new(name: "信濃川の全カード",enemy_cards: @enemy_cards)
    assert_equal "信濃川の全カード", @enemy_deck.name
    assert_equal "市民", @enemy_deck.enemy_cards.first.name
    assert_equal 2, @enemy_deck.enemy_cards.first.type
    assert_equal "皇帝", @enemy_deck.enemy_cards.last.name
    assert_equal 3, @enemy_deck.enemy_cards.last.type
    assert_equal 5, @enemy_deck.enemy_cards.length
  end

  def test_deck_shuffle
    @enemy_deck = Deck.new(name: "信濃川の全カード",enemy_cards: @enemy_cards)
    emperor_count = 0
    citizen_count = 0
    slave_count = 0
    @enemy_deck.mix.each do |card|
      emperor_count += 1 if card.name == "皇帝"
      citizen_count += 1 if card.name == "市民"
      slave_count += 1 if card.name == "奴隷"
    end
    assert_equal 1, emperor_count
    assert_equal 4, citizen_count
    assert_equal 0, slave_count
    assert_equal 5, @enemy_deck.mix.length
  end
end

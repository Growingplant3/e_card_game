require 'minitest/autorun'
require '../lib/deck'

class DeckTest < Minitest::Test
  def test_player_deck
    slave = Card.new(name: "奴隷", type: 1)
    citizen = Card.new(name: "市民", type: 2)
    @player_cards = [citizen,citizen,citizen,citizen,slave]
    @player_deck = Deck.new(cards: @player_cards)
    assert_equal "市民", @player_deck.cards.first.name
    assert_equal 2, @player_deck.cards.first.type
    assert_equal "奴隷", @player_deck.cards.last.name
    assert_equal 1, @player_deck.cards.last.type
    assert_equal 5, @player_deck.cards.length
    assert_equal Array, @player_deck.cards.class
  end

  def test_enemy_deck
    emperor = Card.new(name: "皇帝", type: 3)
    citizen = Card.new(name: "市民", type: 2)
    @enemy_cards = [citizen,citizen,citizen,citizen,emperor]
    @enemy_deck = Deck.new(cards: @enemy_cards)
    assert_equal "市民", @enemy_deck.cards.first.name
    assert_equal 2, @enemy_deck.cards.first.type
    assert_equal "皇帝", @enemy_deck.cards.last.name
    assert_equal 3, @enemy_deck.cards.last.type
    assert_equal 5, @enemy_deck.cards.length
    assert_equal Array, @enemy_deck.cards.class
  end

  def test_mix
    puts "aaaa"
    emperor = Card.new(name: "皇帝", type: 3)
    citizen = Card.new(name: "市民", type: 2)
    @enemy_cards = [citizen,citizen,citizen,citizen,emperor]
    @enemy_deck = Deck.new(cards: @enemy_cards)
    emperor_count = 0
    citizen_count = 0
    slave_count = 0
    puts "bbbb"
    puts @enemy_deck.cards
    puts "cccc"
    @enemy_deck.mix.each do |card|
      if card.name == "皇帝"
        emperor_count += 1
      elsif card.name == "市民"
        citizen_count += 1
      elsif card.name == "奴隷"
        slave_count += 1
      end
    end
    assert_equal 1, emperor_count
    assert_equal 4, citizen_count
    assert_equal 0, slave_count
    assert_equal 5, @enemy_deck.mix.length
    puts "zzzz"
  end

  # 他のクラスに移行する
  # def test_use_card
  #   @enemy_deck = Deck.new(name: "信濃川の全カード",enemy_cards: @enemy_cards)
  #   assert_equal 4, @enemy_deck.use_card.length
  # end
end

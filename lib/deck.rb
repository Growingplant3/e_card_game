require '../lib/card'

class Deck
  attr_reader :name, :player_cards, :enemy_cards

  def initialize(args)
    @name = args[:name]
    emperor = Card.new(name: "皇帝",type: 3)
    citizen = Card.new(name: "市民",type: 2)
    slave = Card.new(name: "奴隷",type: 1)
    @player_cards = [citizen,citizen,citizen,citizen,slave]
    @enemy_cards = [citizen,citizen,citizen,citizen,emperor]
  end

  def show
    @player_deck
  end

  puts "aaaa"
  puts @player_deck
  @player_deck = Deck.new(name: "ルビジの全カード",player_cards: @player_cards)
  puts @player_deck
  @enemy_deck = Deck.new(name: "信濃川の全カード",enemy_cards: @enemy_cards)
end

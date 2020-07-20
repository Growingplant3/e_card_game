require '../lib/card'

class Deck
  attr_accessor :cards

  def initialize(args)
    @cards = args[:cards]
    # @player_cards
    @enemy_cards
  end

  def mix
    puts "嘘？"
    @enemy_deck.cards
    puts "嘘か誠か"
    @enemy_deck.cards.shuffle!
    puts "本当"
  end

  # 別のクラスへ移動予定
  # def use_card
  #   @enemy_cards.shift
  #   @enemy_cards
  # end
end

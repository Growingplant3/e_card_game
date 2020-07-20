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
    puts @enemy_cards
    puts "嘘か真琴か"
    @enemy_cards.shuffle!
    puts "本当"
  end

  # 別のクラスへ移動予定
  # def use_card
  #   @enemy_cards.shift
  #   @enemy_cards
  # end
end

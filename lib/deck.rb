require '../lib/card'

class Deck
  attr_accessor :cards

  def initialize(args)
    @cards = args[:cards]
  end

  def mix
    puts "嘘？"
    puts @cards
    puts "嘘か誠か"
    @cards.shuffle!
    return @cards
    puts "本当"
  end

  # 別のクラスへ移動予定
  # def use_card
  #   @enemy_cards.shift
  #   @enemy_cards
  # end
end

class Card
  attr_accessor :type
end

emperor = Card.new
emperor.type = "「皇帝」"
citizen = Card.new
citizen.type = "「市民」"
@shinanogawa_cards = [emperor]
4.times do
  @shinanogawa_cards << citizen
end
@shinanogawa_cards.shuffle!
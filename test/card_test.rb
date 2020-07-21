require 'minitest/autorun'
require '../lib/card.rb'

class CardTest < Minitest::Test
  def test_card
    emperor = Card.new(name: "皇帝")
    citizen = Card.new(name: "市民")
    assert_equal "皇帝", emperor.name
    assert_equal "市民", citizen.name
  end
end

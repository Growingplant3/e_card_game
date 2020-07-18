require 'minitest/autorun'
require '../lib/card.rb'

class CardTest < Minitest::Test
  def test_card
    emperor = Card.new(name: "皇帝",type: 3)
    citizen = Card.new(name: "市民",type: 2)
    slave = Card.new(name: "奴隷",type: 1)
    assert_equal "皇帝", emperor.name
    assert_equal 3, emperor.type
    assert_equal "市民", citizen.name
    assert_equal 2, citizen.type
    assert_equal "奴隷", slave.name
    assert_equal 1, slave.type
  end
end

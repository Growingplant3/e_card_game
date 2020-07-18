require 'minitest/autorun'
require '../lib/card.rb'

class CardTest < Minitest::Test
  def test_card
    emperor = Card.new(name: "皇帝",type: "emperor")
    citizen = Card.new(name: "市民",type: "citizen")
    slave = Card.new(name: "奴隷",type: "slave")
    assert_equal "皇帝", emperor.name
    assert_equal "emperor", emperor.type
    assert_equal "市民", citizen.name
    assert_equal "citizen", citizen.type
    assert_equal "奴隷", slave.name
    assert_equal "slave", slave.type
  end
end

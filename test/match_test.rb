require 'minitest/autorun'
require '../lib/match'

class MatchTest < Minitest::Test
  def test_match
    @match = Match.new(turn: 5)
    assert_equal 5, @match.turn
  end

  def test_turn_pass
    @match = Match.new(turn: 5)
    assert_equal 4, @match.turn_pass
  end
end

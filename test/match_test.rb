require 'minitest/autorun'
require '../lib/match'

class MatchTest < Minitest::Test
  def test_match
    @match = Match.new(turn: 0)
    assert_equal 0, @match.turn
  end

  def test_turn_pass
    @match = Match.new(turn: 0)
    assert_equal 1, @match.turn_pass
  end
end

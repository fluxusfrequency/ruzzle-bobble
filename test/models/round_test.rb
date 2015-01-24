require_relative "../test_helper"
require "./lib/ruzzle-bobble/models/round.rb"

class RoundTest < Minitest::Test
  def setup
    @round = RuzzleBobble::Round.new
  end

  def test_moves_count
    assert_equal 0, @round.moves_count
  end
end



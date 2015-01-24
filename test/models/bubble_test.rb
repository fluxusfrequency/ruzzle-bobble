require_relative "../test_helper"
require "./lib/ruzzle-bobble/models/bubble.rb"

class BubbleTest < Minitest::Test
  def setup
    @bubble = RuzzleBobble::Bubble.new
  end

  def test_color
    assert_includes [:red, :green, :yellow, :blue], @bubble.color
  end
end


require_relative "../test_helper"
require "./lib/ruzzle-bobble/views/board-view.rb"

class BoardViewTest < Minitest::Test
  def setup
    @view = RuzzleBobble::BoardView.new(app: @app)
  end

  def test_app
    assert_equal @app, @view.app
  end
end



require_relative "../test_helper"
require "./lib/ruzzle-bobble/views/board-view.rb"

class BoardViewTest < Minitest::Test
  def setup
    @app = {}
    @view = RuzzleBobble::BoardView.new(app: @app)
  end

  def test_app
    assert_equal @app, @view.app
  end

  def test_draw_board
    mock = Minitest::Mock.new
    view = RuzzleBobble::BoardView.new(app: mock)
    mock.expect(:rect, true, [100, 100, 500, 300])
    view.draw_board
    mock.verify
  end
end



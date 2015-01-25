require_relative "../test_helper"
require "./lib/ruzzle-bobble/controllers/game-controller.rb"

class GameControllerTest < Minitest::Test
  def setup
    @app = {}
    @controller = RuzzleBobble::GameController.new(app: @app)
  end

  def test_app
    assert_equal @app, @controller.app
  end

  def test_draw
    mock = Minitest::Mock.new
    controller = RuzzleBobble::GameController.new({
      app: @app,
      board_view: mock
    })
    mock.expect(:draw_board, true)
    controller.draw
    mock.verify
  end
end

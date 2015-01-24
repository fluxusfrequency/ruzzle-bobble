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
end

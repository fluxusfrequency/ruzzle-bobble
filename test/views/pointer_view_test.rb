require_relative "../test_helper"
require "./lib/ruzzle-bobble/views/pointer-view.rb"

class PointerViewTest < Minitest::Test
  def setup
    @app = {}
    @view = RuzzleBobble::PointerView.new(app: @app)
  end

  def test_app
    assert_equal @app, @view.app
  end

  def test_draw_pointer
    mock = Minitest::Mock.new
    view = RuzzleBobble::PointerView.new(app: mock)
    mock.expect(:load_image, true, ["../../assets/images/pointer.png"])
    view.draw_pointer
    mock.verify
  end

end


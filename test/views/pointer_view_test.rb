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
end


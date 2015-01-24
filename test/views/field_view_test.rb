require_relative "../test_helper"
require "./lib/ruzzle-bobble/views/field-view.rb"

class FieldViewTest < Minitest::Test
  def setup
    @view = RuzzleBobble::FieldView.new(app: @app)
  end

  def test_app
    assert_equal @app, @view.app
  end
end


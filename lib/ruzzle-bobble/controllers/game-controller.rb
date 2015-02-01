require_relative "../views/board-view.rb"
require_relative "../views/pointer-view.rb"

module RuzzleBobble
  class GameController

    attr_reader :app

    def initialize(options)
      @app = options.fetch(:app)
      @board_view = options[:board_view] || RuzzleBobble::BoardView.new(app: app)
      @pointer_view = options[:pointer_view] || RuzzleBobble::PointerView.new(app: app)
    end

    def draw
      board_view.draw_board
      #pointer_view.draw_pointer
    end

    private

    attr_reader :board_view, :pointer_view

  end
end

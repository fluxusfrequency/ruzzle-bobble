require_relative "../views/board-view.rb"

module RuzzleBobble
  class GameController

    attr_reader :app

    def initialize(options)
      @app = options.fetch(:app)
      @board_view = options[:board_view] || RuzzleBobble::BoardView.new(app: app)
    end

    def draw
      board_view.draw_board
    end

    private

    attr_reader :board_view

  end
end

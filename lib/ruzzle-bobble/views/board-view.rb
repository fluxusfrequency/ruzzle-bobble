require_relative "./base-view"

module RuzzleBobble
  class BoardView < BaseView
    def draw_board
      app.rect 100, 100, 500, 300
    end
  end
end

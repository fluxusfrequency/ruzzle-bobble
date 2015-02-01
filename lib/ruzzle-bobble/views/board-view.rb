require_relative "./base-view"

module RuzzleBobble
  class BoardView < BaseView
    def draw_board
      app.rect 100, 50, 500, 700
    end
  end
end

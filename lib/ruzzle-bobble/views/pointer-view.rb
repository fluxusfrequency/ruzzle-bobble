require_relative "./base-view"

module RuzzleBobble
  class PointerView < BaseView
    def draw_pointer
      pointer = app.load_image "../assets/images/arrow.png", "png"
      app.image pointer, 0, 0
    end
  end
end

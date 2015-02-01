Dir['./ruzzle-bobble/**/*.rb'].each { |file| require file }

module RuzzleBobble; end

class Interface < Processing::App
  def setup
    size 800, 800
    @game_controller = RuzzleBobble::GameController.new(app: self)
    @pointer = load_image "arrow.png", "png"
    p $app.find_method "image"
  end

  def draw
    game_controller.draw
    image(@pointer, 0, 0)
  end

  private

  attr_reader :game_controller
end

Interface.new

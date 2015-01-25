Dir['./ruzzle-bobble/**/*.rb'].each { |file| require file }

module RuzzleBobble; end

class Interface < Processing::App
  def setup
    size 1280, 960
    @game_controller = RuzzleBobble::GameController.new(app: self)
  end

  def draw
    game_controller.draw
  end

  private

  attr_reader :game_controller
end

Interface.new

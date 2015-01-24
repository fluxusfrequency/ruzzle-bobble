Dir['./ruzzle-bobble/controllers/*.rb'].each { |file| require file }

module RuzzleBobble; end

class Interface < Processing::App
  def setup
    size 1280, 960
    @controller = RuzzleBobble::GameController.new(app: self)
  end

  def draw
    ellipse width/2, height/2, 100, 100
  end
end

Interface.new

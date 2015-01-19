Dir['./ruzzle-bobble/controllers/*.rb'].each { |file| require file }

module RuzzleBobble; end

class Interface < Processing::App
  def setup
    size 640, 480
  end

  def draw
    ellipse width/2, height/2, 100, 100
  end
end

Interface.new

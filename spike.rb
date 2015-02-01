require "ruby-processing"
require "forwardable"

class Bobble < Processing::App
  COLORS = {
    red: [150, 0, 0],
    green: [40, 129, 40],
    blue: [0, 0, 189],
    yellow: [255, 255, 0]
  }

  def setup
    size 800, 800
    background 11, 44, 33, 10
    @offset = 1
    new_bubble
  end

  def draw
    background 11, 44, 33, 10
    draw_board
    draw_pointer
    draw_current_bubble
    draw_bubbles
    shoot_bubble if current_bubble.shot?
  end

  def key_pressed
    case key_code
    when 32
      current_bubble.shoot
    when 37
      @offset -= (Math::PI / 64)
    when 38
      puts 'up'
    when 39
      @offset += (Math::PI / 64)
      puts 'right'
    when 40
      puts 'down'
    end
  end

  private

  attr_reader :current_bubble, :offset

  def draw_board
    fill 200
    rect 200, 50, 400, 550
  end

  def draw_pointer
    strokeWeight 5
    stroke 255, 0, 0
    line 400 * offset, 500, 400 * 1 / offset, 650
  end

  def new_bubble
    @current_bubble = Bubble.new({
      app: self,
      color: color(*COLORS.sample[1]),
      x_coord: 400,
      y_coord: 650
    })
  end

  def draw_current_bubble
    current_bubble and current_bubble.render
  end

  def draw_bubbles
    bubbles.each(&:render)
  end

  def shoot_bubble
    if current_bubble_in_motion?
      current_bubble.update_coordinates(0, -5)
    else
      bubbles << current_bubble
      new_bubble
    end
  end

  def current_bubble_in_motion?
    if bubbles.empty?
      current_bubble.y_coord > 75 &&
        (current_bubble.x_coord > 225 &&
         current_bubble.x_coord < 575)
    else
      current_bubble.y_coord > bubbles.max_by(&:y_coord).y_coord + 50 ||
      current_bubble.x_coord > bubbles.max_by(&:x_coord).x_coord + 50
    end
  end

  def bubbles
    @bubbles ||= []
  end
end

module Processable
  extend Forwardable
  def_delegators :app,
    :ellipse, :rect, :noStroke, :fill
end

class Bubble
  include Processable

  attr_reader :x_coord, :y_coord, :shot

  def initialize(options)
    @app = options[:app]
    @color = options[:color]
    @x_coord = options[:x_coord]
    @y_coord = options[:y_coord]
    @shot = false
  end

  def render
    noStroke
    fill color
    ellipse x_coord, y_coord, 50, 50
  end

  def update_coordinates(delta_x, delta_y)
    @x_coord += delta_x
    @y_coord += delta_y
  end

  def shoot
    @shot = true
  end

  def shot?
    shot
  end

  private

  attr_reader :app, :color
end

class Hash
  def sample
    k = self.keys.sample
    [k, self[k]]
  end
end

Bobble.new

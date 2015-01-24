module RuzzleBobble
  class Bubble
    COLORS = [:red, :green, :yellow, :blue]

    attr_reader :color

    def initialize
      @color = COLORS.sample
    end

  end
end

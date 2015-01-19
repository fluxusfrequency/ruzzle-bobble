module RuzzleBobble
  class GameController

    attr_reader :app

    def initialize(options)
      @app = options.fetch(:app)
    end

  end
end

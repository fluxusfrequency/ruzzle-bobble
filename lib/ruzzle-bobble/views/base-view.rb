module RuzzleBobble
  class BaseView

    attr_reader :app

    def initialize(options)
      @app = options.fetch(:app)
    end

  end
end


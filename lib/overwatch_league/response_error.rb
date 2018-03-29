module OverwatchLeague
  class ResponseError < StandardError
    attr_reader :response

    def initialize(response)
      @response = response
      super("#{response.code}: #{response.body}")
    end
  end
end

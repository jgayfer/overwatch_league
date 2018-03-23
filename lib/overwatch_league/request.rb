require 'http'

module OverwatchLeague
  module Request
    class << self
      def get(url)
        HTTP.get(url.to_str)
      end
    end
  end
end

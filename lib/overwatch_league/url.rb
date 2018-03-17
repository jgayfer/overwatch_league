require 'net/http'

module OverwatchLeague
  class URL
    def initialize(path, params: {})
      @path = path
      @params = params
    end

    def to_str
      String.new.tap do |url|
        url << @path
        url << '?' + URI.encode_www_form(@params) unless @params.empty?
      end
    end
  end
end

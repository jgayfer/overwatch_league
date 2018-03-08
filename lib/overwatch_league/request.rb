require 'http'

module OverwatchLeague
  module Request
    HTTP_OK = '200'.freeze
    class << self

      def get(path, params = {})
        response = HTTP.get(build_url(path, params))
        handle_response(response)
      end

      private

      def handle_response(response)
        unless response.code == HTTP_OK
          raise Exception.new(response.code)
        end
        response.body
      end

      def build_url(path, params)
        "#{path}?#{parameterize(params)}"
      end

      def parameterize(params)
        URI.escape(params.collect{|k,v| "#{k}=#{v}"}.join('&'))
      end
    end
  end
end

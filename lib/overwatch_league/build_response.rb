module OverwatchLeague
  module BuildResponse
    class << self
      def call(response)
        snake_case_json_string = convert_hash_keys(JSON.parse(response.body.to_s)).to_json
        JSON.parse(snake_case_json_string, object_class: OpenStruct)
      end

      private

      def convert_hash_keys(value)
        case value
          when Array
            value.map { |v| convert_hash_keys(v) }
          when Hash
            Hash[value.map { |k, v| [underscore_key(k), convert_hash_keys(v)] }]
          else
            value
         end
      end
  
      def underscore_key(k)
        to_snake_case(k.to_s)
      end
  
      def to_snake_case(string)
        string.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr("-", "_").
        downcase
      end
    end
  end
end

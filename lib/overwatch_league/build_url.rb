module OverwatchLeague::BuildURL
  class << self
    def call(path, params = {})
      String.new.tap do |url|
        url << path
        url << "?#{parameterize(params)}" unless params.empty?
      end
    end

    private

    def parameterize(params)
      URI.escape(params.collect{|k,v| "#{k}=#{v}"}.join('&'))
    end
  end
end

require_relative "overwatch_league/version"
require_relative "overwatch_league/url"
require_relative "overwatch_league/request"
require_relative "overwatch_league/api"
require_relative "overwatch_league/response_error"
require_relative "overwatch_league/client"
require_relative "overwatch_league/build_response"

module OverwatchLeague
  class << self
    def new
      Client.new
    end
  end
end

require_relative 'request'
require_relative 'response_error'
require_relative 'build_response'

module OverwatchLeague
  module API
    BASE_URL = 'https://api.overwatchleague.com'
    HTTP_OK = 200

    def teams
      handle_response(Request.get(URL.new("#{BASE_URL}/teams")))
    end

    def team(team_id)
      handle_response(Request.get(URL.new("#{BASE_URL}/teams/#{team_id}")))
    end

    def ranking
      handle_response(Request.get(URL.new("#{BASE_URL}/ranking")))
    end

    def standings
      handle_response(Request.get(URL.new("#{BASE_URL}/standings")))
    end

    def matches
      handle_response(Request.get(URL.new("#{BASE_URL}/matches")))
    end

    def match(match_id)
      handle_response(Request.get(URL.new("#{BASE_URL}/matches/#{match_id}")))
    end

    def schedule
      handle_response(Request.get(URL.new("#{BASE_URL}/schedule")))
    end

    def streams
      handle_response(Request.get(URL.new("#{BASE_URL}/streams")))
    end

    def vods
      handle_response(Request.get(URL.new("#{BASE_URL}/vods")))
    end

    def maps
      handle_response(Request.get(URL.new("#{BASE_URL}/maps")))
    end

    def news
      handle_response(Request.get(URL.new("#{BASE_URL}/news")))
    end

    def videos
      handle_response(Request.get(URL.new("#{BASE_URL}/playlist/owl-app-playlist")))
    end

    private

    def handle_response(response)
      raise ResponseError.new(response) unless response.code == HTTP_OK
      BuildResponse.(response)
    end
  end
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'overwatch_league'
require 'webmock/rspec'

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:any, /api.overwatchleague.com/)
  end
end

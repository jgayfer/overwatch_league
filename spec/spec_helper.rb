$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'overwatch_league'
require 'webmock/rspec'
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov.formatter = SimpleCov::Formatter::Console
SimpleCov.start

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:any, /api.overwatchleague.com/)
  end
end

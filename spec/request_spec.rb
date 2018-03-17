RSpec.describe OverwatchLeague::Request do
  let(:url) { OverwatchLeague::URL.new(path: 'http://api.overwatchleague.com') }
  describe '.get' do
    subject { described_class.get(url) }
    it { is_expected.to be_a String }
  end
end

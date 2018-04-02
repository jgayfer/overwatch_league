RSpec.describe OverwatchLeague::Client do
  let(:client) { described_class.new }

  it { is_expected.to be_a described_class }
end

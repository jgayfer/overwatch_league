require_relative 'mocks/mock_response'

RSpec.describe OverwatchLeague::BuildResponse do
  let(:code) { 0 }
  let(:body) { '{"camelKey": [{"anotherOne": "value"}]}' }
  let(:response) { MockResponse.new(code, body)}

  describe '.call' do
    subject { described_class.call(response) }

    it { is_expected.to be_a OpenStruct }

    it 'converts keys to snake case' do
      expect(subject).to respond_to(:camel_key)
    end

    it 'converts nested keys to snake case' do
      expect(subject.camel_key.first).to respond_to(:another_one)
    end
  end
end

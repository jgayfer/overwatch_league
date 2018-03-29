require_relative 'mocks/mock_response'

RSpec.describe OverwatchLeague::ResponseError do
  let(:code) { 404 }
  let(:body) { 'response body' }
  let(:response) { MockResponse.new(code, body)}

  describe '#initialize' do
    subject { described_class.new(response) }

    it {is_expected.to be_a described_class }

    it 'contains a response' do
      expect(subject.response).to eq response
    end
  end
end

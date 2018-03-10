RSpec.describe OverwatchLeague::BuildURL do
  let(:path) { 'https://www.test.com' }
  let(:params) { {'key1': 'value1', 'key2': 'value2'} }
  let(:url) { "#{path}?key1=value1&key2=value2" }

  describe '#call' do
    context 'with no params' do
      subject { described_class.(path) }
      it 'returns the path' do
        expect(subject).to eq(path)
      end
    end

    context 'with params' do
      subject { described_class.(path, params) }
      it 'returns the paramaterized url' do
        expect(subject).to eq(url)
      end
    end
  end
end

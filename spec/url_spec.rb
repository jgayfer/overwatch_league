RSpec.describe OverwatchLeague::URL do
  let(:path) { 'http://www.test.com' }
  let(:params) { {'key1': 'value1', 'key2': 'value2'} }
  let(:url_str) { "http://www.test.com?key1=value1&key2=value2" }

  describe '#initialize' do
    subject { described_class.new(path) }
    it { is_expected.to be_a described_class }
  end

  describe '#to_str' do
    context 'with params' do
      subject { described_class.new(path, params: params).to_str }
      it 'returns the formatted url' do
        expect(subject).to eq(url_str)
      end
    end

    context 'with no params' do
      subject { described_class.new(path).to_str }
      it 'returns the formatted url' do
        expect(subject).to eq(path)
      end
    end
  end
end

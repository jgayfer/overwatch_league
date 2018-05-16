RSpec.describe OverwatchLeague::API do
  let(:ok) { 200 }
  let(:not_found) { 404 }
  let(:client) { OverwatchLeague::Client.new }

  describe '.teams' do
    let(:response_body) { '{"endpoint": "teams"}' }

    subject { client.teams }

    before do
      stub_request(:any, /api.overwatchleague.com\/teams/).
        to_return(status: ok, body: response_body)
    end

    it 'is the teams endpoint' do
      expect(subject.endpoint).to eq 'teams'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/teams/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.team' do
    let(:team_id) { '123' }
    let(:response_body) { '{"endpoint": "specific_team"}' }

    subject { client.team(team_id) }

    before do
      stub_request(:any, /api.overwatchleague.com\/teams\/#{team_id}/).
        to_return(status: ok, body: response_body)
    end

    it 'is the endpoint for a specific team' do
      expect(subject.endpoint).to eq 'specific_team'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/teams\/#{team_id}/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.ranking' do
    let(:response_body) { '{"endpoint": "ranking"}' }

    subject { client.ranking }

    before do
      stub_request(:any, /api.overwatchleague.com\/ranking/).
        to_return(status: ok, body: response_body)
    end

    it 'is the endpoint for ranking' do
      expect(subject.endpoint).to eq 'ranking'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/ranking/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.standings' do
    let(:response_body) { '{"endpoint": "standings"}' }

    subject { client.standings }

    before do
      stub_request(:any, /api.overwatchleague.com\/standings/).
        to_return(status: ok, body: response_body)
    end

    it 'is the endpoint for standings' do
      expect(subject.endpoint).to eq 'standings'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/standings/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.matches' do
    let(:response_body) { '{"endpoint": "matches"}' }

    subject { client.matches }

    before do
      stub_request(:any, /api.overwatchleague.com\/matches/).
        to_return(status: ok, body: response_body)
    end

    it 'is the matches endpoint' do
      expect(subject.endpoint).to eq 'matches'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/matches/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.match' do
    let(:match_id) { '123' }
    let(:response_body) { '{"endpoint": "specific_match"}' }

    subject { client.match(match_id) }

    before do
      stub_request(:any, /api.overwatchleague.com\/matches\/#{match_id}/).
        to_return(status: ok, body: response_body)
    end

    it 'is the endpoint for a specific match' do
      expect(subject.endpoint).to eq 'specific_match'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/matches\/#{match_id}/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.live-match' do
    let(:response_body) { '{"endpoint": "live_match"}' }

    subject { client.live_match }

    before do
      stub_request(:any, /api.overwatchleague.com\/live-match/).
        to_return(status: ok, body: response_body)
    end

    it 'is the endpoint for a live match' do
      expect(subject.endpoint).to eq 'live_match'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/live-match/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.schedule' do
    let(:response_body) { '{"endpoint": "schedule"}' }

    subject { client.schedule }

    before do
      stub_request(:any, /api.overwatchleague.com\/schedule/).
        to_return(status: ok, body: response_body)
    end

    it 'is the schedule endpoint' do
      expect(subject.endpoint).to eq 'schedule'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/schedule/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.streams' do
    let(:response_body) { '{"endpoint": "streams"}' }

    subject { client.streams }

    before do
      stub_request(:any, /api.overwatchleague.com\/streams/).
        to_return(status: ok, body: response_body)
    end

    it 'is the streams endpoint' do
      expect(subject.endpoint).to eq 'streams'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/streams/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.vods' do
    let(:response_body) { '{"endpoint": "vods"}' }

    subject { client.vods }

    before do
      stub_request(:any, /api.overwatchleague.com\/vods/).
        to_return(status: ok, body: response_body)
    end

    it 'is the vods endpoint' do
      expect(subject.endpoint).to eq 'vods'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/vods/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.maps' do
    let(:response_body) { '{"endpoint": "maps"}' }

    subject { client.maps }

    before do
      stub_request(:any, /api.overwatchleague.com\/maps/).
        to_return(status: ok, body: response_body)
    end

    it 'is the maps endpoint' do
      expect(subject.endpoint).to eq 'maps'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/maps/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.news' do
    let(:response_body) { '{"endpoint": "news"}' }

    subject { client.news }

    before do
      stub_request(:any, /api.overwatchleague.com\/news/).
        to_return(status: ok, body: response_body)
    end

    it 'is the news endpoint' do
      expect(subject.endpoint).to eq 'news'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/news/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end

  describe '.videos' do
    let(:response_body) { '{"endpoint": "videos"}' }

    subject { client.videos }

    before do
      stub_request(:any, /api.overwatchleague.com\/playlist\/owl-app-playlist/).
        to_return(status: ok, body: response_body)
    end

    it 'is the videos endpoint' do
      expect(subject.endpoint).to eq 'videos'
    end

    context 'when the response is not OK' do
      before do
        stub_request(:any, /api.overwatchleague.com\/playlist\/owl-app-playlist/).
          to_return(status: not_found)
      end

      it 'raises an error' do
        expect { subject }.to raise_error(OverwatchLeague::ResponseError)
      end
    end
  end
end

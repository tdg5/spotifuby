require 'spec_helper'

class SpotifySpec < Minitest::Spec
  describe 'private' do
    describe '#web' do
      before do
        Spotify::Instance.any_instance.stubs(:config).returns({})
        @spotify = Spotify.create
      end

      it "isn't cached" do
        RSpotify.expects(:authenticate).twice
        assert @spotify.send(:web) != @spotify.send(:web)
      end
    end
  end
end

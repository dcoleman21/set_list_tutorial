require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe 'average_song_length' do
      before(:each) do
        @prince = Artist.create!(name: "Prince")
        @purple = @prince.songs.create!(title: "Purple Rain", length: 854, play_count: 8599)
        @beret  = @prince.songs.create!(title: "Raspberry Beret", length: 878, play_count: 9034)
        @doves  = @prince.songs.create!(title: "When Doves Cry", length: 1, play_count: 9934)
      end

      it "returns the average song length" do
        expect(@prince.average_song_length.round(2)).to eq(577.67)
      end
    end
  end
end

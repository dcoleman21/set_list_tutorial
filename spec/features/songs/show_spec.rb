require 'rails_helper'

RSpec.describe 'the songs show page' do
  it "displays song title" do
    artist = Artist.create(name: "Zac Brown Band")
    song = artist.songs.create!(title: "Chicken Fried", length: 455, play_count: 12)
    song_2 = artist.songs.create!(title: "Slow Burn", length: 437, play_count: 67)

    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it "displays the name of the artist for the song" do
    artist = Artist.create(name: "Zac Brown Band")
    song = artist.songs.create!(title: "Chicken Fried", length: 455, play_count: 12)
    song_2 = artist.songs.create!(title: "Slow Burn", length: 437, play_count: 67)

    visit "/songs/#{song.id}"
    
    expect(page).to have_content(artist.name)
  end
end

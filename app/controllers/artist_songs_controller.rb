class ArtistSongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs # set as instance variable to access in view
  end
end

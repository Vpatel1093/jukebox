class JukeboxController < ApplicationController
  def home
    @albums = Album.all
    @songs = Song.all
    @user = User.first
    @favorite_songs = @user.favorite_songs
  end
end

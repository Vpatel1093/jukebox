class JukeboxController < ApplicationController
  def home
    @albums = Album.all
    @album1_songs = Song.where(album_id: 1).sort_by &:song_order
    @album2_songs = Song.where(album_id: 2).sort_by &:song_order
    @album3_songs = Song.where(album_id: 3).sort_by &:song_order
    @album4_songs = Song.where(album_id: 4).sort_by &:song_order
    @album5_songs = Song.where(album_id: 5).sort_by &:song_order
    @user = User.first
  end
end

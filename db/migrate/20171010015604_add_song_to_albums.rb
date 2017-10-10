class AddSongToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_reference :albums, :song, foreign_key: true
  end
end

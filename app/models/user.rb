class User < ApplicationRecord
  has_many :favorite_songs, foreign_key: "song_id", class_name: "Song"
end

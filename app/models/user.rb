class User < ApplicationRecord
  has_many :favorite_songs, class_name: "Song", foreign_key: "user_id"
end

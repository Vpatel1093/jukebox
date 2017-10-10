class Album < ApplicationRecord
  validates :name, presence: true, length: {maximum: 255}
  validates :artist_name, presence: true, length: {maximum: 255}
  validates :cover_photo_url, presence: true, length: {maximum: 255}

  has_many :songs
end

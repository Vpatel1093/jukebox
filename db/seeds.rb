# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'

# create album objects using parsed JSON data from service API
def create_albums
  url = 'https://stg-resque.hakuapp.com/albums.json'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  albums = JSON.parse(response)

  albums.each do |album|
    Album.create!(album.except('id'))
  end
end

# create song objects using parsed JSON data from service API
def create_songs
  5.times do |i|
    url = "https://stg-resque.hakuapp.com/songs.json?album_id=#{i+1}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    songs = JSON.parse(response)

    songs.each do |song|
      Song.create!(song.except('id'))
    end
  end
end

def create_user
  User.create!
end

create_albums
create_songs
create_user

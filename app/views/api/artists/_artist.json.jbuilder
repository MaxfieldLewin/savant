json.extract! artist, :id, :name

if details
  json.extract! artist, :description, :image_id
end

if songs
  json.songs artist.songs do |song|
    json.partial! 'api/songs/song', song: song, details: false
end

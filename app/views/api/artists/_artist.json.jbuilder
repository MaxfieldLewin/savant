json.extract! artist, :id, :name

if details
  json.extract! artist, :description
  json.image_url asset_path(artist.image.url(:original))
end

if songs
  json.songs artist.songs do |song|
    json.partial! 'api/songs/song', song: song, details: false, splash: false
  end
end

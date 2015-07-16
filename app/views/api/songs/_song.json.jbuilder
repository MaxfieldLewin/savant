json.extract! song, :id, :title, :artist_id
json.artist_name song.artist.name
if details
  json.extract! song, :description, :contents, :image_id
end
